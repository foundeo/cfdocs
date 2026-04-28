# Session Management Guide

If you missed our [Obfuscation](/security-obfuscation), [Encryption](/security-encryption) or [Authentication](/security-authentication) guides, we strongly recommend that you read those guides first as this guide builds on some of the principles outlined in those guides to build a more secure session management system.

This guide **does not** cover using much of the built-in session management functions available with CFML. Instead, we approach this topic using a ground-up approach that offers complete control over the session management process. This roll-your-own approach has been found to be more secure and more concise than the built-in functions of CFML, and for many the concepts are easier to grasp as they require you to walk through the entire session management lifecycle.

Once your user has [authenticated](/security-authentication) with your system securely, you will need to ensure that the session management lifecycle is secure and concise. We begin to do that by understanding some of the basic concepts of session management. Note that some of this information is repetitive if you've been following along with all our security guides, but is presented here again for a more complete picture of session management if you've **not** already read our other guides.

### Session Cookies

CFML can provide the *cftoken* session cookie management features out of the box and, by default, these are usually turned on in older CFML engines, with CF10+ allowing for greater control over how those session cookies are managed. You can, and should, however utilize your own session cookie to manage sessions to achieve greater control over the session as well as eliminate a common attack vector against CFML - anyone who has used CFML understands that the *cftoken* cookie is used for session management, and thus understands this is the attack vector to exploit. If you instead utilize your own session cookie, it can help avoid script kiddie utilities designed to attack the specific *cftoken* cookie provided by CFML. We'll start by defining the name of our session cookie within the *application* scope of your *Application.cfc*, as follows:

    // set the name of the cookie to use for session management (*DO NOT USE* cfid, cftoken or jsessionid)
    application.cookieName = '__some_obfuscated_name';

To prevent potential hackers from recognizing your cookie as an authentication cookie, it is best to obfuscate the name of the cookie in some way. For example:

    __ga_tracking_beacon_

Which might confuse the hacker into believing that this is a Google Analytics cookie, and not one specific to authentication. Be creative in naming your cookie and it can, and often will, be readily dismissed by a potential hacker as unrelated to your authentication. You could also simply use the [hash()](/hash) algorithm, but this is less likely to confuse a potential hacker than making the cookie appear to be unrelated to your site:

    __#hash( 'some_cookie_name', 'SHA-256', 'UTF-8', 25 )#

### Session timeout

If a user is idle for a period of time, then we want to invalidate that user's session and force them to login again to help ensure our session management remains secure. This is a best practice you should not avoid... else you open yourself up to another vector of attack where a MITM attacker could hijack a user's session and begin attacking your application as an authenticated user. For this reason, we will set a timeout value in the *application* scope of your *Application.cfc*, as follows:

    // set number of minutes before a session is timed out
    application.timeoutMinutes = 30; // 30 minutes 

Depending on the application, you will want to adjust the timeout value to a number of minutes equivalent to the longest process within your application. For example, if you have long forms in your application that could take the user 20 minutes to fill out completely before posting the form, then you will want to allow for that time between requests to avoid the user submitting the form and being immediately timed out for inactivity.

### Session storage

In our examples here we will be using the cache functions of CFML to store a session object (bean) for each logged in user to our system. This is arbitrary and you could just as easily use a database, in-memory database, virtual file system (e.g. RAM://), or flat file storage with XML or JSON - or some combination thereof, for example.

We have found, through trial and error, that using the cache functions is fast and allows us to use distributed caching in large enterprise applications without sticky sessions to maintain the session across clusters, and is our preferred way of storing session data.

### Session management in onRequestStart()

We'll put our session management code in the *onRequestStart()* method of our Application.cfc so that we can capture and manage the session for each request made of our application. If you're using an MVC framework, like fw/1 or ColdBox, for example, you can use the equivalent onRequestStart() method to inject a controller or interceptor to handle session management for you, otherwise you can build your session management directly into the onRequestStart() method. For our example here we will be using a *security.cfc* controller in fw/1 to manage the sessions, coupled with a *SecurityService.cfc* service.

The first thing we'll need to do is to ensure that we're **not** triggering session management for the login or authentication parts of our application. We do this so that we do not end up in an endless loop where the user can never actually authenticate because the session management code triggers a redirect to the login page if certain conditions are not met. I typically do this using an array of 'views' to **exclude** from session management, as follows:

    var actionArr = [ 'main.login', 'main.authenticate' ];

    // check if we're already logging in
    if ( !arrayFind( actionArr, rc.action )) {

In this example we're using fw/1's *rc.action* variable to determine if we're in the login or authentication views. If we are not in either of those views, then we proceed to check if our session cookie is present, as follows:

        // we're not, check if the session cookie is defined
        if ( !structKeyExists( cookie, application.cookieName ) ) {
            // it isn't, redirect to the login page
            variables.fw.redirect( action = 'main.login', queryString = "msg=501" );
        }

In the above code, we check if our *application.cookieName* variable is defined in the COOKIE scope by using the [structKeyExists()](/structkeyexists) function. If the cookie is **not** defined, then we redirect the user to the login page, passing some parameter we can use to provide a message to the user about why they have to authenticate (session expired, etc.). Again, we're using fw/1 in this example, but you could also simply check for the existence of the cookie and then use [cflocation](/cflocation) to redirect the user to the login page.

When we [authenticated](/security-authentication) our user, we set an [encrypted](/encrypt) cookie value to store the users session id. Once we have checked for the existence of the cookie, we will then attempt to [decrypt()](/decrypt) the cookie's value using a [try](/cftry)/[catch](/cfcatch) block, as follows:

        // try
        try {
            // decrypt the cookie
            rc.sessionId = application.securityService.getSessionIdFromCookie( cookie[ application.cookieName ] );
        // catch any decryption errors
        } catch ( any e ) {
            // decryption failed (invalid cookie value), redirect to the login page
            variables.fw.redirect( action = 'main.login', queryString = "msg=501" );
        }

In the above code we're using a function from another CFC called SecurityService to decrypt the session id from the cookie. If that function fails to decrypt the value of the passed in cookie, then the value is invalid and we once again redirect the user to our login page. The *getSessionIdFromCookie()* function has the following code:

    public string function getSessionIdFromCookie( required string cookieId ) {
        var sessionId = dataDec( arguments.cookieId, 'cookie' );
        return sessionId;
    }

As you can see, we're simply using the dataDec() function from the same SecurityService CFC to decrypt the value of the cookie using the encryption key and algorithm assigned to the cookie scope. Again, if you've not read our previous guides then this function may seem obscure to you, so we recommend reading those guides for a complete understanding of what we're doing here and why.

Once we have successfully decrypted the users cookie, we then check to see if the users session is valid. In our example we are once again using a function from the SecurityService CFC to ensure that the users session is in our session management storage (in this case, the cache - but could just as easily be using database, XML, JSON, etc. storage mechanisms), and that the session has not (or should not be) timed out for inactivity, as follows:

        // lock the session and get the sessionObj from the cache
        lock scope='session' timeout='10' {
            session.sessionObj = application.securityService.checkUserSession( rc.sessionId );
        }

Our *checkUserSession()* function has the following code:

    public any function checkUserSession( required string sessionId ) {
        // get the session object from the cache
        var sessionObj = cacheGet( uberHash( arguments.sessionId, 'MD5', 3000 ) );
        // ensure it is still in the cache
        if ( isNull( sessionObj ) ) {
            // it isn't, return an empty session object
            return createObject( 'component', 'model.beans.Session').init();
        // otherwise, ensure the session shouldn't have already expired (30 mins)
        } else if ( dateDiff('n', sessionObj.getLastActionAt(), now() ) >= application.timeoutMinutes ) {
            // it should have expired, return an empty session object
            return createObject( 'component', 'model.beans.Session').init();
        // otherwise
        } else {
            // session is valid, return the session object
            return sessionObj;
        }
    }

Here we are first checking if the session object exists in our cache. If it does **not** exist, then we return an empty bean which we will check after returning from this function. We then compare the last action of the user as stored in the session object with the timeout we specified in our application scope. If the users last action timespan is longer than the session timeout specified, then we again return an empty bean. Otherwise, the user has a valid session object and we return the populated bean we have stored in our cache. Again, this storage mechanism is arbitrary and could be any other storage mechanism - for speed and for distributed caching capabilities, however, we feel that using the cache functions is the most appropriate method of handling user sessions and recommend using it.

Now that we have a session object (bean) to check, we have to see if the user id returned is valid (any non-zero value) or invalid (a zero value), as follows:

        // check if the sessionObj returned is valid
        if ( session.sessionObj.getUserId() == 0 ) {
            // it isn't, redirect to the login page
            variables.fw.redirect( action = 'main.login', queryString = "msg=502" );            
        }

In the above code we check if the user id is zero, which is specified as the default value in our bean's init() method upon creation. If it *is* zero, then the user does not have a valid session and is redirected back to the login page. If the user is a non-zero value, then we know we now have a valid session and can proceed to operate on that session object to a) rotate the users session and b) update the users session with the last action datetime, as follows:

        // lock the session and rotate the session id (for every request)
        lock scope='session' timeout='10' {
            session.sessionObj = application.securityService.rotateUserSession( session.sessionObj );
        }

        // update session's last action datetime and save session
        lock scope='session' timeout='10' {
            session.sessionObj = application.securityService.updateUserSession( session.sessionObj );
        }

We've split this process into two parts - one to rotate the users session id, with our *rotateUserSession()* function of the SecurityService CFC, which has the following code:

    public any function rotateUserSession( required any sessionObj ) {
        arguments.sessionObj.setSessionId( getSessionId() );
        return arguments.sessionObj;
    }

This function sets a new session id into our session object (bean) using the *getSessionId()* function of the SecurityService CFC, which has the following code:

    public string function getSessionId() {
        var sessionId = uberHash( createUUID() & now(), 'SHA-384', 2000 );
        return sessionId;
    }

We then update the session's last action and save the session back into the cache with the *updateUserSession()* function of the SecurityService CFC, which has the following code:

    public any function updateUserSession( required any sessionObj ) {
        clearUserSession( arguments.sessionObj );
        arguments.sessionObj.setLastActionAt( now() );
        setUserSession( arguments.sessionObj );
        return arguments.sessionObj;
    }

This code first clears any existing session object from the cache, then updates the session object's (bean's) last action datetime, saves the user's session object (bean) back to the cache and returns the updated session object.

We split this into two parts because session rotation can be tricky in some applications. For example, using the browsers 'back' function can (and will) cause the cookie being sent from the browser to be the formerly assigned cookie value which is no longer valid. For this reason and for some applications we simply comment out, or leave out completely, the session rotation.

Finally, we re-set the users cookie value with the new (rotated) and encrypted session id, as follows:

        // send a new cookie with the new encrypted session id
        getPageContext().getResponse().addHeader("Set-Cookie", "#application.cookieName#=#application.securityService.setSessionIdForCookie( session.sessionObj.getSessionId() )#;path=/;domain=#listFirst( CGI.HTTP_HOST, ':' )#;HTTPOnly");

The above code uses the *setSessionIdForCookie()* function of the SecurityService CFC, which has the following code:

    public string function setSessionIdForCookie( required string sessionId ) {
        var cookieId = dataEnc( arguments.sessionId, 'cookie' );
        return cookieId;
    }

In the above code we encrypt the cookie's value (the session id) using the key and algorithm for the cookie scope. If we put this all together we now have the following session management code:

    var actionArr = [ 'main.login', 'main.authenticate' ];

    // check if we're already logging in
    if ( !arrayFind( actionArr, rc.action )) {

        // we're not, check if the session cookie is defined
        if ( !structKeyExists( cookie, application.cookieName ) ) {
            // it isn't, redirect to the login page
            variables.fw.redirect( action = 'main.login', queryString = "msg=501" );  
        }

        // try 
        try {
            // decrypt the cookie
            rc.sessionId = application.securityService.getSessionIdFromCookie( cookie[ application.cookieName ] );
        // catch any decryption errors
        } catch ( any e ) {
            // decryption failed (invalid cookie value), redirect to the login page
            variables.fw.redirect( action = 'main.login', queryString = "msg=501" );
        }

        // lock the session and get the sessionObj from the cache
        lock scope='session' timeout='10' {
            session.sessionObj = application.securityService.checkUserSession( rc.sessionId );
        }

        // check if the sessionObj returned is valid
        if ( session.sessionObj.getUserId() == 0 ) {
            // it isn't, redirect to the login page
            variables.fw.redirect( action = 'main.login', queryString = "msg=502" );
        }

        // lock the session and rotate the session id (for every request)
        lock scope='session' timeout='10' {
            session.sessionObj = application.securityService.rotateUserSession( session.sessionObj );
        }

        // update session's last action datetime and save session
        lock scope='session' timeout='10' {
            session.sessionObj = application.securityService.updateUserSession( session.sessionObj );
        }

        // send a new cookie with the new encrypted session id
        getPageContext().getResponse().addHeader("Set-Cookie", "#application.cookieName#=#application.securityService.setSessionIdForCookie( session.sessionObj.getSessionId() )#;path=/;domain=#listFirst( CGI.HTTP_HOST, ':' )#;HTTPOnly");

    }

All of these concepts can be found in convenient functions in my [SecurityService.cfc](https://bit.ly/1IkY5zK) service and [security.cfc](https://bit.ly/1XhnGPG) controller, which are part of a larger example of using these and other security techniques to create a [secure](https://bit.ly/1Msdwkt), or [two-factor](https://bit.ly/1Yx4hGt), [framework one (FW/1)](https://bit.ly/22lB2eu) application.

# Obfuscation Guide

It's a funny sounding word, but it means to 'render obscure, unclear, or unintelligible', or what us older folk used to call 'security through obscurity', essentially. When it comes to code, there are lots of things that should be obscured to enhance security, such as form and URL parameters. How often do you see parameters in URL's like the following?

    Profile.cfm?userId=911&name=Bob&departmentId=5

You know immediately that '911' is the id of the user being passed in to this code, that their name is 'Bob' and they belong to department id '5'. From here it's easy enough to start changing any of the values of these parameters to see what the code does. Hmm… what if we change the userId to 912… what would we get returned from this code then? Probably user 912's information. This is called parameter tampering, and is by far the easiest of all exploits. You ought to be checking for parameter tampering – to make sure that when use 911 is logged in they can't get to any other users information for example… but we'll cover that in more depth a bit later.

What if, instead of giving hackers the information they need right on the URL, we generated URL's that obfuscate the names of our parameters?

    Profile.cfm?vc5c71dd0fbb58b1de4df=911&vfe6f54c33f9064833ee8=Bob&va929c5b94ad8ed832a38=5

These are contrived values, mind you, but now that these parameter names are obfuscated, you really don't know what the values are for. You could still monkey with the values and see what happens, and we'll explain how to rectify that problem in our [Encryption](/security-encryption) guide, but you won't instinctively understand what any one of those parameters do just by looking at the URL anymore.

I can hear some of you already asking… 'Wait. Do you mean I have to come up with obscure parameter names and then try and remember where I used them?' The answer is no, you do not. Thankfully there is an easy way to obscure the parameter names you already use… we [hash()](/hash) them:

    <a href="Profile.cfm?v#hash( 'userId', 'SHA-384', 'UTF-8', 500 )#=#local.userId#
        &amp;v#hash( 'name', 'SHA-384', 'UTF-8', '1000' )#=#local.firstName#
        &amp;v#hash( 'departmentId', 'SHA-384', 'UTF-8', 750 )=#local.departmentId#">Edit Profile</a>

The next question I hear you asking is 'Ok, great. But how do I handle that in Profile.cfm?'. I'm glad you asked, and it is just as simple:

    param name="URL['v' & hash( 'userId', 'SHA-384', 'UTF-8', 500 )]" default="0";
    param name="URL['v' & hash( 'name', 'SHA-384', 'UTF-8', 1000 )]" default="";
    param name="URL['v' & hash( 'departmentId', 'SHA-384', 'UTF-8', 750 )]" default="0";

Note the inclusion of the letter 'v' in both the construction of the URL and in the parameters expected in Profile.cfm. The reason for this additional character is to remain compliant with HTML parameter name definitions, which state that all parameter names should start with a letter. As [hash()](/hash) frequently produces values that start with a number, this additional character ensures you remain HTML compliant. You can use any letter (or combination of letters) that you choose, for URL 'variables' I chose the letter 'v'.

You can just as easily apply this technique to form fields, though there is less value in using them for standard form fields given the HTML form typically includes labels which clearly indicate what each field's purpose is. It is still a handy technique to apply to hidden form fields, however, which helps further obfuscate common values. Using our Profile.cfm example:

    <input type="hidden" name="ff#hash( 'userId', 'SHA-512', 'UTF-8', 825 )#" value="911" />

And conversely, getting this value in the action page, let's assume Profile.cfm posts back on itself, is just as simple as the URL variant:

    param name="FORM['ff' & hash( 'userId', 'SHA-512', 'UTF-8', 825 )]" default="0";

Note that I've switched from 'v' as my starting variable name to 'ff' for 'formfield' when generating and parameterizing the hashed userId name. Also note that I've switched the encoding from SHA-384 to SHA-512, and changed the number of iterations. These tweaks produce a different parameter name in the form than was produced in the URL, thus further obfuscating which parameter is which when investigating the form for data passed into it.

'Wait.' You say… 'The value of the URL and form fields are still "911", so this is still not very secure'. Right you are, my friend. And thus, we need to introduce our next concept on the road to true security enlightenment… encryption.

[Click Here](/security-encryption) to learn how encrypting your data will help protect you from parameter tampering or information disclosure.

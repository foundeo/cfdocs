<div class="jumbotron">
  <div class="container">
    <h1>CFDocs</h1>
    <p>UltraFast CFML Documentation Reference.</p>
  </div>
</div>
<div class="container">
      
	<div class="row">
    <div class="col-lg-4">
      <h2><span class="glyphicon glyphicon-cloud-download"></span> &nbsp; CDN Hosted</h2>
      <p>Hosted on Amazon CloudFront CDN for ultra fast response around the globe. Sponsored by <a href="http://foundeo.com/">Foundeo Inc.</a></p>
    </div>
     <div class="col-lg-4">
      <h2><span class="glyphicon glyphicon-thumbs-up"></span> &nbsp; Handy</h2>
      <p>Easy urls like: <a href="/hash">cfdocs.org/hash</a> just hit <code>/tag-name</code> or <code>/function-name</code>.</p>
    </div>
    <div class="col-lg-4">
      <h2><span class="glyphicon glyphicon-cutlery"></span> &nbsp; Forkable</h2>
      <p>All data is hosted on GitHub, don't like what you see, fork it and send a pull request. See a list of people who have contributed below.</p>
      
    </div>
   
  </div>

  <br><hr><br>
  <cftry>
    <cfhttp url="https://api.github.com/repos/foundeo/cfdocs/stats/contributors" method="GET" charset="utf-8" result="statResult" throwonerror="false" timeout="3"></cfhttp>
      <cfif statResult.statusCode contains "200" AND IsJSON(statResult.fileContent)>
        <cfset stats = DeserializeJSON(statResult.fileContent)>
        <h2 class="text-center"><cfoutput>#ArrayLen(stats)#</cfoutput> Awesome Contributors <br><small>The Leader Board</small></h2>
            <!--- seams to be in reverse order --->
            <cfset i = 0>
            <cfloop from="#ArrayLen(stats)#" to="1" index="s" step="-1">
              
              <cfsilent>
                <cfset stat = stats[s]>
                <cfif !structKeyExists(stat, "author") OR isNull(stat.author) OR !isStruct(stat.author) OR !structKeyExists(stat.author, "html_url")>
                  <!--- for some cases possibly a bug on github side the author key is null or empty --->
                  <cfcontinue>
                </cfif>
                <cfset i = i+1>
                <cfset a = 0>
                <cfset d = 0>
                <cfset c = 0>
                <cfset lastMod = 0>
                <cfloop array="#stat.weeks#" index="w">
                  <cfset a = a+w.a>
                  <cfset d = d+w.d>
                  <cfset c = c+w.c>
                  <cfif w.a GT 0 OR w.d GT 0 OR w.c GT 0 AND w.w GT lastMod>
                    <cfset lastMod = w.w>
                  </cfif>
                </cfloop>
              </cfsilent>
              <cfoutput>
              <div class="contributor">
                <div class="row">
                  <div class="col-sm-4 text-center">
                    <a href="#encodeForHTMLAttribute(stat.author.html_url)#" rel="nofollow"><img src="#encodeForHTMLAttribute(stat.author.avatar_url)#" class="img-rounded" height="75" width="75" /></a> 
                    <br>
                    <div class="text-muted"><strong>#encodeForHTML(stat.author.login)#</strong></div>
                  </div>
                  <div class="col-sm-4">
                    
                    <span class="label label-primary">#Val(stat.total)# Contribution<cfif Val(stat.total) NEQ 1>s</cfif></span><br>
                    
                    <span class="label label-info">#Val(a+d)# Line<cfif Val(a+d) NEQ 1>s</cfif> Altered</span>
                    <cfset weeksAgo = DateDiff("w", DateAdd("s", lastMod, "1970-01-01 00:00:00"), now())>
                    <span class="label label-success"><cfif weeksAgo EQ 0>Contributed this week!<cfelse>#weeksAgo# week<cfif weeksAgo NEQ 1>s</cfif> ago</cfif></span>
                  </div>
                  
                </div>
              </div>
              </cfoutput>
            </cfloop> 
        <div id="test-tool"><small>Contributions not showing up? Test them with this tool. <a href="http://contribution-checker.herokuapp.com/" rel="nofollow">http://contribution-checker.herokuapp.com</a>.<small></div>
      <cfelse>
        <!--- error connecting to github so tell CDN to only cache for 30 seconds --->
        <cfset request.cacheControlMaxAge = 30> 
      </cfif>
  
    <style>
        .contributor { width: 320px; display:inline-block; background-color: #f1f1f1; border-radius: 7px; margin: 5px 20px; padding:15px 10px; }
        #test-tool { text-align: center;}
    </style>
    <cfcatch>
      <small>Some sort of error occurred constructing the leaderboard, please check back later.</small>
      <cfset request.cacheControlMaxAge = 30> 
    </cfcatch>
  </cftry>
  
</div>
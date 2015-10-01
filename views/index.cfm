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

  <cfhttp url="https://api.github.com/repos/foundeo/cfdocs/stats/contributors" method="GET" charset="utf-8" result="statResult"></cfhttp>
      <cfif statResult.statusCode contains "200" AND IsJSON(statResult.fileContent)>
        <cfset stats = DeserializeJSON(statResult.fileContent)>
        <h2><cfoutput>#ArrayLen(stats)#</cfoutput> Contributors - Leader Board</h2>
        
        
        <p class="text-center">
            <!--- seams to be in reverse order --->
            <cfloop from="#ArrayLen(stats)#" to="1" index="s" step="-1">
              <cfset stat = stats[s]>
              <cfoutput>
                <div class="row">
                  <div class="col-sm-1 col-xs-3">
                    <a href="#encodeForHTMLAttribute(stat.author.html_url)#" rel="nofollow"><img src="#encodeForHTMLAttribute(stat.author.avatar_url)#" class="img-circle" height="60" width="60" /></a> 
                  </div>
                  <div class="col-sm-2 col-xs-9">
                    
                    <span class="label label-primary">#Val(stat.total)# Contribution<cfif Val(stat.total) NEQ 1>s</cfif></span><br>
                    <cfsilent>
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
                    <span class="label label-info">#Val(a+d+c)# Line<cfif Val(a+d+c) NEQ 1>s</cfif> Altered</span>
                  </div>
                  <div class="col-sm-6 col-xs-12">
                    <cfset weeksAgo = DateDiff("w", DateAdd("s", lastMod, "1970-01-01 00:00:00"), now())>
                    <em><strong>#encodeForHTML(stat.author.login)#</strong> last contribution <cfif weeksAgo EQ 0>this week!<cfelse>#weeksAgo# week<cfif weeksAgo NEQ 1>s</cfif> ago</cfif></em>
                  </div>
                  
                </div>
              </cfoutput>
            </cfloop>  
        </p>
        
      </cfif>
  

  
</div>
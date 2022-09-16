<cfscript>
config = {'url':"https://api.github.com/repos/foundeo/cfdocs/stats/contributors"};
oLeader = new lib.leaderboard( config );
qPeople = oLeader.get();
</cfscript>

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
      <p>Hosted on a CDN for ultra fast response around the globe. Sponsored by <a href="https://foundeo.com/">Foundeo Inc.</a></p>
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
  <cfif qPeople.recordCount>
    <br><hr><br>
    <h2 class="text-center"><cfoutput>#qPeople.recordCount#</cfoutput> Awesome Contributors <br><small>The Leader Board</small></h2>
    <div class="row">

    <cfoutput>
    <cfloop query="qPeople">
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="contributor row">
            <div class="col-xs-5 text-center">
              <a href="#encodeForHTMLAttribute(qPeople.link)#" rel="nofollow"><img src="#encodeForHTMLAttribute(qPeople.avator)#" class="img-rounded" /></a>
              <div class="text-muted"><strong>#encodeForHTML(qPeople.name)#</strong></div>
            </div>
            <div class="col-xs-7">
              <span class="label label-primary">#Val(qPeople.commits)# Contribution<cfif Val(qPeople.commits) NEQ 1>s</cfif></span><br>
              <span class="label label-info">#qPeople.lines# Line<cfif qPeople.lines NEQ 1>s</cfif> Altered</span><br>
              <span class="label label-success"><cfif qPeople.weeksAgo EQ 0>Contributed this week!<cfelse>#qPeople.weeksAgo# week<cfif qPeople.weeksAgo NEQ 1>s</cfif> ago</cfif></span><br>
              <span class="label label-danger">#round(qPeople.effort)# Points</span><br>
            </div>
          </div>
        </div>
    </cfloop>
    <!--- cache for 1 day --->
    <cfset request.cacheControlMaxAge = 86400>
  
    </cfoutput>
    </div>
  <cfelse>
    <!--- error connecting to GitHub so tell CDN to only cache for 30 seconds --->
    <cfset request.cacheControlMaxAge = 30>
  </cfif>
</div>

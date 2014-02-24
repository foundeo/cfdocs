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
      <cfhttp url="https://api.github.com/repos/foundeo/cfdocs/stats/contributors" method="GET" charset="utf-8" result="statResult"></cfhttp>
      <cfif statResult.statusCode contains "200" AND IsJSON(statResult.fileContent)>
        <cfset stats = DeserializeJSON(statResult.fileContent)>
        <p class="text-center">
            <cfloop array="#stats#" index="stat">
              <cfoutput>
                <a href="#XmlFormat(stat.author.html_url)#" rel="nofollow"><img src="#stat.author.avatar_url#" class="img-circle" height="30" width="30" /></a> 
              </cfoutput>
            </cfloop>  
        </p>
      </cfif>
    </div>
   
  </div>

  
</div>
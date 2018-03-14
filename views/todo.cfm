<cfoutput>
    <cfset indexVars = ['tags','functions', 'guides','categories']>
    <cfloop array="#indexVars#" index="variable">
        <div class="col-xs-12 col-sm-6 col-md-4">
          <div class="todo row">
            <div class="col-xs-5 text-center">
                <a href="/#variable#" rel="nofollow">
                    <div class="text-muted">
                        <strong>#UCFirst(variable)#</strong>
                    </div>
                </a>
            </div>
            <div class="col-xs-7">
                Add missing #variable#<br />
                <a href="/reports/missing-#variable#.cfm">See all...</a>
            </div>
          </div>
        </div>
    </cfloop>
</cfoutput>

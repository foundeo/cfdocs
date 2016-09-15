<cfset oLeaderboard = new lib.leaderboard( "https://api.github.com/repos/foundeo/cfdocs/stats/contributors" )>
<cfset people = oLeaderboard.get()>

<cfdump var="#people#">
<cfscript>
config = {
	  'url':"https://api.github.com/repos/foundeo/cfdocs/stats/contributors"
	, 'token':'c84289abee1a3b8d29bc28f4ebe0a1f99a26034b'
	, 'lookup':true
};
oLeader = new leaderboard( config );

people = oLeader.get();

writedump( people );
</cfscript>

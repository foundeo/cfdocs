# New Operator

CF9+ The New Operator added in ColdFusion 9

The new operator is an alternate way to create a component instance.  The other methods being: cfobject, createObject, cfinvoke and entityNew.  EntityNew works mainly with ORM objects.  When the component instance is created the CFML engine automaticlly calls the init method or 

    <cfset person = new Person()>



	<cfset person = createObject( "component", "Person" ).init();

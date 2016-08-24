# New Operator

CF9+ The New Operator added in ColdFusion 9

The new operator is an alternate way to create a component instance.  The other methods being: cfobject, createObject, cfinvoke and entityNew.  EntityNew works mainly with ORM objects.  When the component instance is created the CFML engine automaticlly calls the init method.  You can change the init method to any other method in the component by using the initmethod attribute.

file: Person.cfc

	component {
		public component function init(){
			return this
		}

	}

example creating an instance of the Person component and the equivalent using createObject.

    <cfset person = new Person()>

	<cfset person = createObject( "component", "Person" ).init();


example using the initmethod attribute

file: Animal.cfc

	component initmethod="birth" {
		public component function birth( required string name ){
			variables.name = name;
			return this
		}

	}

	<cfset animal = Animal( "fido" )>

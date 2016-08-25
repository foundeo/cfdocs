# New Operator

CF9+ New Operator added in ColdFusion 9

The new operator is an alternate way to instantiate a component.  The other methods being: cfobject, createObject, cfinvoke and entityNew.  The CFML engine will automatically call the component constructor which by default is the init method.  The init method can be overridden by the initmethod attribute.  If neither the init method or initmethod attribute are present an instance is created but no methods are ran.  The constructor will determine the value returned and can be anything allowed by cffunction.  A return value of void will cause an instance of the component to be returned.  The constructor can accept arguments by location or by value just like a normal function call.

file: Person.cfc

    component {
        public component function init(){
            return this
        }
    }

example creating an instance of the Person component and the equivalent using createObject.

    <cfset bob = new Person()>

    <cfset bob = createObject( "component", "Person" ).init();

example using the initmethod attribute

file: Dog.cfc

    component initmethod="birth" {
        public component function birth( required string name, string breed="mixed" ){
            variables.name = name;
            return this
        }
    }

    pet = new Dog( "fido" );

example using named arguments

    <cfset pet = new Dog( breed="pitbull", name="hank" )>
or
    pet = new Dog( breed="pitbull", name="hank" );
    
Any of the script functions implemented as cfc can be instantiate using the new operator.

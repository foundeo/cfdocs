# New operator

CF9+ New operator added in ColdFusion 9

The new operator is an alternate way to instantiate a component. The other methods being: cfobject, createObject, cfinvoke and entityNew. The CFML engine will automatically call the component constructor which by default is the init method. The init method can be overridden by the initmethod attribute. If neither the init method or initmethod attribute are present an instance is created but no methods are ran. The constructor will determine the value returned and can be anything allowed by cffunction. A return value of void will cause an instance of the component to be returned. The constructor can accept arguments by position or named just like a normal function call.

file: Person.cfc

    component {
        public Person function init() {
            return this;
        }
    }

example creating an instance of the Person component and the equivalent using createObject.

    <cfset bob = new Person()>

    <cfset bob = createObject( "component", "Person" ).init()>

example using the initmethod attribute

file: Dog.cfc

    component initmethod="birth" {
        public Dog function birth( required string name, string breed="mixed" ) {
            variables.name = name;
            return this;
        }
    }

example using cfscript

    pet = new Dog( "fido" );

example using named arguments

    <cfset pet = new Dog( breed="pitbull", name="hank" )>
or

    pet = new Dog( breed="pitbull", name="hank" );

example where the component is in a folder structure.

    pet = new node.animals.Dog( breed="pitbull", name="hank" );

The path and component can also be a variable. Notice the use of quotes around the variable name.  You must also use quotes if the component name contains a hyphen. Components imported with cfimport do not need to use a dotted path.

    path2component = "node.animals.Dog";    
    pet = new "#path2component#"( breed="pitbull", name="hank" );

Any of the script functions implemented as a cfc can be instantiate using the new operator.

CF2018 New Operator Additions

CF2018+ Added support for creating Java objects using the `new` keyword, as well as components by path. 

    pet = new component("node.animals.Dog");
    
To create a new instance of a Java object in CF2018+ you can use:

    map = new java("java.util.HashMap");


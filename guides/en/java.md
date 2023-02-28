# Java Integration Guide

Since ColdFusion 6, Java has been core to the CFML language. Your CFML code get converted into Java bytecode and is executed by the Java Virtual Machine. This close relationship makes integration with Java libraries in your CFML code very easy and fast.

## Using Java in CFML

The Java Platform has several built-in classes that you can make use of in CFML (similar to how CFML has several built-in Functions and Tags that you can leverage). You can find detailed documentation of the Java Platform API [here](https://docs.oracle.com/javase/8/docs/api/index.html), there is quite a bit of useful API at your disposal.

#### Using a Constructor

Here's an example of using the [`java.io.File`](https://docs.oracle.com/javase/8/docs/api/java/io/File.html) class to output the last modified date by calling the `lastModified()` method.

    currentFile = createObject("java", "java.io.File").init( getCurrentTemplatePath() );
    writeOutput( currentFile.lastModified() );

In the above example we created a new instance of the `java.io.File` class. The use of `init()` is CFML's way of calling a constructor on a Java object. Java classes may have multiple constructors, in this case we use the `File(String pathname)` constructor to pass in a [String](https://javadocs.org/string) returned by the CFML function getCurrentTemplatePath.

In order to call a non static method, you first need to have an instance of the Java object. You will need to use a constructor or a static method to get an instance of a Java object so you can start calling methods.

#### Invoking a static method

A static method is a function that does not require an object instance to execute. In CFML you still have to use `createObject` to get a reference to the class to invoke the static method on.

For example if we want to invoke the static `currentTimeMillis()` function in the [`java.lang.System`](https://docs.oracle.com/javase/8/docs/api/java/lang/System.html) class
we can do so like this:

    javaSystem = createObject("java", "java.lang.System");
    currentTime = javaSystem.currentTimeMillis();
    writeOutput(currentTime);

Often when you have an API to interact with you can look through the Java API documentation for static methods which are sometimes the entry point into an API (they return an instance of the Object you want to use). For example to interact with the Java Runtime, you can call the static method `getRuntime()` on the [`java.lang.Runtime`](https://javadocs.org/runtime) class.

    runtime = createObject("java", "java.lang.Runtime").getRuntime();
    writeOutput( runtime.availableProcessors() );

#### Converting Java Code Examples to CFML

Ok, let's suppose you have a Java library that you want to use in CFML. You have a code example showing how to use the library in Java that looks like this:

    Car myCar = CarFactory.create();
    myCar.setDriver( new Driver("Pete") );
    Driver myDriver = myCar.getDriver();
    myDriver.eject();

Often times code examples leave off the package names and only use class names, you will need the full package name of the class. Here's a hint: look for an `import` statement in a full code example, you might see `import com.example.cars.CarFactory;` or perhaps `import com.example.cars.*;` in the code example. If all else fails rename the jar file as a zip and extract it and use the folder names pointing to the class you want to use.

Now to write the example in CFML. On the first line, we can assume that the `create()` method in the `CarFactory` class is a `static` method. The difference between a `static` method and a regular instance method is very important to understand. A `static` method can be called without an _instance_ of the class. All `static` methods are marked as such.

#### All I have are Java Docs, how do I get started?

A good way to start is to look for `static` methods that you can invoke. If there are too many classes start by looking for a class with _Factory_ in the name, the _Abstract Class Factory Pattern_ is popular entry point to Java APIs.

#### Type Casting

Because CFML is a typeless language and Java is not, when you want to pass a Java primitive `int` into a method you can use the `javaCast` function.

    integerObject = createObject("java", "java.lang.Integer");
    maxInt = integerObject.max(javaCast("int", 5), javaCast("int", 6));

## Using third party Java Libraries (jar files) in CFML

To use a third party Java library, you will need to let the Java Runtime Environment know where to find the executable code. Java libraries are distributed as _jar_ files. Java uses _class loaders_ to load jar files and point to class implementations.

Once the jar file is loaded and accessible to the CFML server / JVM you can use `createObject` just like above to work with the third party Java API.

#### Using this.javaSettings to load jar files in CF10+

If you are running CF10+ or Lucee4.5+ you can use your Application.cfc file to specify jar file locations. Here is an example:

    component {
        this.name = "example";
        this.javaSettings = {
            loadPaths = ["/path/to/jarFile.jar"]
        };
    }

The variable `this.javaSettings.loadPaths` is an array of jar files or java class file paths. You may need to restart ColdFusion or rename/restart your Application when you make changes to this setting.

#### Adding Jar files to the classpath

If you want a Java library to be accessible to the entire server you can add it to the Java classpath. There are a few ways you can do this. On most ColdFusion servers the classpath is specified in the jvm.config file, you can also use the ColdFusion administrator to add jar file paths (it simply updates the jvm.config file for you) under the _Java and JVM Settings_ page.

Most JEE/CFML servers also are configured to pick up any jar files placed in `WEB-INF/lib` automatically on server startup.

## More Info

* [Enhanced Java Integration in ColdFusion 10](https://help.adobe.com/en_US/ColdFusion/10.0/Developing/WSe61e35da8d318518-106e125d1353e804331-8000.html)
* [JavaLoader - dynamic classloader for CFML](https://github.com/markmandel/JavaLoader)

##Installing The Server

The ColdFusion server configuration contains an embedded copy of Tomcat and is most similar to earlier versions of ColdFusion.

_Note_ : The cf_root directory refers to your installation directory. By default, this directory is C:\ColdFusion11 in Windows, and /opt/ColdFusion11 in UNIX.

<strong>Gathering information necessary to install the server configuration</strong>

Although the ColdFusion 11 installer provides an intuitive interface, it helps to plan your answers to the questions asked by the installer. Use the following tables to help plan for installing the server configuration of ColdFusion 11.



Platform-specific installer name?

 
1. Serial number for ColdFusion?


2. Type of installation?
    Server configuration
    J2EE configuration
    
3. Select ColdFusion Server Profile
    Select one of the supported Server profiles. For more information on the profiles, see Understanding ColdFusion Server Profiles.
    
4. Subcomponents to install?
    The required sub-components to install.

5. Specify the remote component administration credentials
    Note: for the Production Profile and Production + Secure Profile, there is a certain amount of password strength that is expected. If the password is not string enough, you get the following warning message:

6. Access add-on services remotely by allowed certain IP addresses

7. ColdFusion installation directory?

8. Configure web server or use built-in web server?
    Configure web server for ColdFusion
    Enable ColdFusion built-in web server

9. Web server to configure? (Only if you do not use the built-in web server.)
    IIS
    Apache
    Other

10. Configuration directory? (Apache and IIS)

11. Specify a port

12. Enable Administrator Password

13. Enabling/Disabling Servlets
    You can selectively enable/disable certain servlets at the installation type.
    Note: this option is valid only for the following profiles:
    * Production profile
    * Production + Secure Profile

14. Enable Secure Profile
    Yes
    No
    Identify a list of IP addresses that will have access to the ColdFusion Administrator.

15. Configure OpenOffice
    Yes
    No

16 Path to server binary? (Apache)

17. Whether to enable RDS?
    Yes
    No
    Note: RDS allows the server to interact with remotely connected developers. Adobe recommends that you disable RDS for production servers.Disabling RDS also disables the directory browsing applets in the ColdFusion Administrator.

18. RDS password?

19. Automatically check for server updates?
    Yes
    No

<strong>Installing ColdFusion using the server configuration</strong>

Once you have determined the answers to the questions in the above section Gathering information necessary to install the server configuration, you can install the ColdFusion server configuration in Windows or UNIX, as applicable.

<strong>Installing ColdFusion server configuration in Windows or MAC</strong>
Note: (Windows only) The Windows installer requires a computer that supports at least 256 colors.

<strong>Install ColdFusion in Windows or MAC</strong>
1. Read the online version of the Release Notes for any late-breaking information or updates. For more information, see www.adobe.com/go/learn_cfu_releasenote_en.
2. Ensure that your operating system meets the system requirements described on the Adobe website at www.adobe.com/go/learn_cfu_cfsysreqs_en.
3. Review Installation considerations for Windows and Installation considerations for all platforms (Refer to the Installing Adobe ColdFusion).
4. Determine the answers to the questions in the above table in "Gathering information necessary to install the server configuration" section.
5. Close any applications that are currently running on your computer.
6. If you plan to configure an external web server, ensure that the web server is running.
7. Insert the DVD or download the setup file from the Adobe website.
8. If the installation wizard does not start automatically when you insert the DVD, locate the appropriate installer file on the DVD and double-click it. If you are installing from a network or a downloaded file, locate the ColdFusion installer *Windows only:* coldfusion_11_WWEJ_win32.exe/coldfusion_11_WWEJ_win64.exe and double-click it.*MAC only:*Extract the coldfusion_11_WWEJ_osx11.dmg file and double-click the installer.
9. Follow the instructions in the installation wizard, and let it run to completion.
10. Click OK to open the ColdFusion Administrator and configure the server.
11. To install any other integrated Adobe or third-party technologies, see Installing Integrated Technologies.
12. Configure and manage your system, as described in Configuring your System your System.
13. To learn about ColdFusion, read the documentation, which is accessible through the Documentation link on the Resources page of the ColdFusion Administrator.

<strong>Installing the ColdFusion server configuration in UNIX</strong>
By default, ColdFusion installs into the /opt/coldfusion11 directory. You can also choose to install ColdFusion 11 in a different directory.

Note: The default user is nobody for the UNIX installer running ColdFusion.

<strong>Install the ColdFusion server configuration in UNIX</strong>
1. Read the online version of the Release Notes for any late-breaking information or updates. For more information, see www.adobe.com/go/learn_cfu_releasenote_en.
2. Ensure that your operating system meets the system requirements described on the Adobe website at www.adobe.com/go/learn_cfu_cfsysreqs_en.
3. Review Installation considerations for UNIX and Installation considerations for all platforms  (Refer to the Installing Adobe ColdFusion).
4. Determine the answers to the questions in the above section "Gathering information necessary to install the server configuration".
5. If you plan to configure an external web server, ensure that the web server is running.
6. Log in as root.
Copy the installation file that is appropriate for your platform and locale from the DVD or Adobe website, and save it to a directory on your local disk. The following installation files are those for the supported server configuration platforms:

Linux: ColdFusion_11_WWEJ_linux32.bin (for 32-bit systems)
 

ColdFusion_11_WWEJ_linux64.bin (64-bit systems)

Solaris: ColdFusion_11_WWEJ_solaris64.bin

 

1. Using the cd command, go to the directory that contains the installation file.
2. Ensure that you have executable permission for the installation file. You can change permissions on the file by using the following command:

    chmod 777 ColdFusion_11_WWEJ_solaris64.bin

3. Start the installation with the following command:

./<filename>


Note: To run the Linux installer in GUI mode, type ./<filename> -i gui.

 

4. Follow the prompts in the installation program, and let it run to completion.

Note: For security reasons, it is crucial that you do not use root for the runtime user.

 

5. Start ColdFusion with the following command:

    /cf_root/cfusion/bin/coldfusion start

If you specified the use of an external web server when you ran the installer, ColdFusion automatically runs the cf_root/cfusion/bin/cf-connectors.sh script when it starts the first time. This shell script runs the Web Server Configuration Tool by using the settings that you specified during the installation. If there are problems running this script, review the configuration and bin directory specifications, modify as necessary, and rerun the script. You can also configure your web server by using the scripts in cf_root/cfusion/bin/connectors, as appropriate. To stop ColdFusion, use the following command:

    /cf_root/cfusion/bin/coldfusion stop

For more information on managing processes, see Managing the ColdFusion process in UNIX.

6. Open ColdFusion Administrator to run the Configuration wizard.
7. Configure and manage your system, as described in Configuring your System.
8. To install any other integrated Adobe or third-party technologies, see Installing Integrated Technologies.
9. To learn about ColdFusion, read the documentation, which is accessible through the Documentation link on the Resources page of the ColdFusion Administrator.
 


<strong>ColdFusion installation directory structure</strong>

By default, ColdFusion11 is your installation directory. The following table describes the directory structure:

_cfusion_:

Contains the following directories:

bin: Programs for starting, stopping, and viewing information for ColdFusion, and to run Crystal Reports (Windows only). It also contains the password reset scripts for server administrator and Admin Component for remote server start and stop.
cache: Repository for temporary files from ColdFusion.
cfx: Sample C++ and Java CFX files with their supporting files. You can also store your CFX files in this directory (although you can put them in any location that is defined in your classpath).
charting: Files for the ColdFusion graphing and charting engine.
CustomTags: Repository for your custom tags
db: The sample Apache Derby databases for all platforms.
gateway: Files for ColdFusion event gateways.
jetty: Solr configuration files and files related to remote instance start and stop.
jintegra: (Applies only to Windows) JIntegra programs, libraries, and other supporting files (for example, to integrate Java and COM code; manage access to ActiveX controls (OCXs) that are hosted in a graphical user interface (GUI) container; and register the JVM and type libraries). (Applicable only for Windows.)
jnbridge: Files for .NET Integration Services.
lib: JAR, XML, property, and other files that are the foundation of ColdFusion, for functionality such as queries, charting, mail, security, Solr, and system probes.
logs: Repository for ColdFusion log files. JRE-specific log files are in the runtime/logs directory. Console outputs are logged in to coldfusion-out.log instead of cfserver.log.
Mail: Repository for spooled mail and mail that cannot be delivered.
META-INF: XML metadata for the ColdFusion Administrator.
MonitoringServer: Contains {{crossdomain.xml }}used for multi-server monitoring.
registry: (UNIX only) Flat file to store registry settings
runtime: Programs and supporting files for the ColdFusion runtime. Also, contains the Tomcat libraries. The conf directory in runtime contains all Tomcat configuration files.
stubs: web services.
wwwroot: Default web root directory for the built-in web server. When running on other web servers, this directory contains the CFIDE and WEB-INF directories; do not remove this directory.

_config_:

Contains instances.xml and connector configuration files. Also, contains cluster configuration file, cluster.xml.

_jre_:

Java runtime files.

_uninstall_:

Files to uninstall ColdFusion.

 

Note: The ColdFusion_install\cfusion\bin directory contains the Jvm.config file.

 

<strong>Using the built-in web server</strong>

ColdFusion provides in-built Tomcat application server that you can use to develop ColdFusion applications.

Note that the version of Tomcat application server bundled with ColdFusion 11 is 7.0.52.


During the ColdFusion installation, choose a web server. If you select the built-in web server, your web root directory is located in the cfroot/wwwroot directory. By default, the web server runs on port 8500. It means that to display a page in your application, append:8500 to the host name or IP address in the URL; for example, http://localhost:8500/YourApp1/index.cfm. If the page does not appear, ensure that the document is located in the built-in web server's web root directory; for example, C:\ColdFusion11\cfusion\wwwroot\YourApp1\index.cfm.

Note: If port 8500 is in use, the installer checks up to 100 ports (starting with 8501) to find a port that is not used. ColdFusion uses that port and displays a message to indicate the selected port.

If you select an external web server during installation, the built-in web server is deactivated.

<strong>Change the port of the built-in web server</strong>
1. Back up the server.xml file. This file is in the cfroot\cfusion\runtime\conf directory.
2. Open the original server.xml file for editing.
3. Search for internal webserver start.Update the port number.

    <Connector executor="tomcatThreadPool" maxThreads="50"
    port="8500" protocol="org.apache.coyote.http11.Http11Protocol"
    connectionTimeout="20000"
    redirectPort="8445" compression="on" useSendfile="no" compressableMimeType="text/html,text/xml"/>

4. Save the file and then restart ColdFusion.
 

<strong>Configuring the built-in web server (Tomcat)</strong>

While installing, if you have configured ColdFusion on an external web server, do the following to configure ColdFusion on in-built Tomcat:

1. Open the cfroot\cfusion\runtime\conf\server.xml file.
2. Search for internal webserver start.Uncomment the following connector XML.

    <Connector executor="tomcatThreadPool"
    port="8500" protocol="org.apache.coyote.http11.Http11Protocol"
    connectionTimeout="20000"
    redirectPort="8445"/>

Save the file, and then restart ColdFusion.

To enable OS Symbolic links after switching to Tomcat, edit the context.xml file found in /cfusion/runtime/conf/ to add allowLinking="true" attribute to the context element.

 

<strong>Starting, stopping, and restarting ColdFusion</strong>

<strong>On Windows</strong>
1. At prompt, go to the directory cfroot\cfusion\bin and run the following command: coldfusion.exe -start -console. To stop ColdFusion, use the command coldfusion.exe -stop -console. To restart, use the command coldfusion.exe -restart -console.Alternatively, you could also start, stop, and restart ColdFusion server using Windows Services.

Note: Paused tasks misfire when restarting ColdFusion.

 

Note: As possible in previous versions of ColdFusion, you can also use the cfstart script to start/stop the ColdFusion sever.

 

Note: The -console argument is optional. If it is not provided, the logs are saved in the cfroot\cfusion\logs directory.

_On UNIX/Linux/Solaris/MAC OSX_

1. At prompt, go to the directory cfroot\cfusion\bin and run the following command: ./coldfusion start}}To stop ColdFusion, use the command ./{{coldfusion stop. }}To restart, use the command {{./coldfusion restart.

Note: Paused tasks misfire when restarting ColdFusion.

 

Note: Use the status command to find the status of ColdFusion server.

 

<strong>Editing the JVM settings</strong>

To edit the JVM settings, open the cfroot\cfusion\bin\jvm.config file and update the following details:

* java.home: Java home. If not set, ColdFusion verifies the default JRE in the cfroot\jre folder, in the registry, or in the J{{AVA_HOME}} environment variable.
* java.args: Settings for -Xmx, ColdFusion classpath, and so on.
* java.library.path: Settings for library path.
* java.class.path: Additional classpath settings in a comma-separated list.
* application.home: Default is cfroot\cfusion
 


<strong>Creating and editing a new ColdFusion instance</strong>

After installing ColdFusion in stand-alone mode, create an instance of ColdFusion using the ColdFusion Administrator.

1. In the ColdFusion Administrator, go to Enterprise Manager > Instance Manager.
2. Click Add New Instance.
3. Enter the server name and server directory.
4. (Optional) Check Create Windows Service.
5. Click Submit. In the Instance Manager, start, stop, restart, delete, access website, or access administrator.
6. Click the Edit icon to edit the instance manager.
7. Edit the internal webserver port and load balancing factor.Load balancing factor represents the load the instance takes up. Load balancing factor is applicable only if the instance is part of the cluster. For example, the load balancing factor for the first instance is 1 and that of the second instance is 2. The second instance receives two times more requests.
8. Click Submit.
 

<strong>Registering a remote instance</strong>

Register a new remote instance of ColdFusion using the ColdFusion Administrator.

1. In the ColdFusion Administrator, click Enterprise Manager > Instance Manager > Register Remote Instance.
2. Specify the details such as instance name, remote host, remote port, http port, and JVM route. Instance name is a string that is used to identify the instance. Remote port and HTTP port are displayed in the Instance Manager page. These ports are provided in the server.xml file available in the runtime\conf folder of the instance. Remote port is the AJP port and the instance port is the connector port.JVM route is the remote instance name. The JVM route is an attribute that acts as an identifier for a particular Tomcat worker. JVM route is provided in the server.xml file available in the runtime\conf folder of the instance. For more information on JVM route, see http://tomcat.apache.org/tomcat-7.0-doc/cluster-howto.html.

Note: A remote instance and a local instance cannot have the same JVM route if they are added in a cluster with sticky session enabled.

 

3. If you want remote start and stop functionality over HTTP, enter Admin Component port, Admin Component user name, and Admin Component password. The default Admin Component port is 8985.

Note: To enable this feature, install admin component on the remote host.

    a. In the remote host, open the ColdFusion_installtion\cfusion\jetty\etc\jetty.xml.
    b. Search for the string, org.mortbay.jetty.bio.SocketConnector.
    c. Update the host with the IP address of the remote host.
    d. Restart the jetty server.
4. Click Submit.
 

<strong>Adding start and stop functionality to a remote instance over HTTPS</strong>

You can start and stop a remote instance over HTTPS or HTTP. To enable this feature, install admin component while installing ColdFusion. You can install Solr, admin component, or both while installing ColdFusion.

1. Do the following in the remote host.
    a. In the remote host, generate a private key in a keystore file. Provide the details at prompt.

    cfroot\jre\bin\keytool -genkeypair -alias certificatekey -keyalg RSA -validity 7 -keystore keystore.jks

 

    b. Export the certificate. You can have a self-signed certificate or a certificate from a Certificate Authority.

    cfroot\jre\bin\keytool -export -alias certificatekey -keystore keystore.jks -rfc -file selfsignedcert.cer

 

    c. Copy the jks file created in the jetty\etc directory.
    d. Open the jetty\etc\jetty.xml file.
    e. Search for the string, To add an HTTPS SSL Listenerand add the following entry:

    <Call name="addConnector">
    <Arg>
    <New class="org.mortbay.jetty.security.SslSocketConnector">
    <Set name="Port">8443</Set>
    <Set name="maxIdleTime">30000</Set>
    <Set name="keystore"><SystemProperty name="jetty.home" default="." />/etc/jks-file.jks</Set>
    <Set name="password">changeit</Set>
    <Set name="keyPassword">changeit</Set>
    <Set name="truststore"><SystemProperty name="jetty.home" default="." />/etc/jks-file.jks</Set>
    <Set name="trustPassword">changeit</Set>
    </New>
    </Arg>
    </Call>

 

    f. Update the keystore name, password, key password, and jks file in the entry.
    g. Search for the string org.mortbay.jetty.bio.SocketConnector.
    h. Update the host with the IP address of the remote host.
    i. Restart the jetty server.

Note: If the remote server is running on Windows Vista, Windows 7, or Windows Server 2008, start the jetty sever with admin privileges.

 

2. Do the following in the local host from where you add the remote instance:
    a. Copy the .cer file created in the remote host to any of the locations.
    b. Import the certificate.

    cfroot\jre\bin\keytool.exe -importcert -keystore "cfroot\jre\lib\security\cacerts" -file selfsignedcert.cer -storepass password

    c. Register the remote instance using the ColdFusion Administrator. For more information, see Registering a remote instance section in this document.
    d. In the Register Remote Instance page, enter the admin component port, admin component user name, and admin component password (user name and password. These details you specified while installing the Remote Instance Administrator). The default https port is 8443.
    e. Select the HTTPS check box.
    f. Click Submit.
 

<strong>Setting up remote start and stop functionality using HTTPS in Server Manager</strong>

You can set up start and stop remote instance functionality in Server Manager. To enable this feature, install Remote Instance Administrator while installing ColdFusion.

1. Do the following in the remote host.
    a. In the remote host, generate a private key in a keystore file. Provide the details at prompt.

    cfroot\jre\bin\keytool -genkeypair -alias certificatekey -keyalg RSA -validity 7 -keystore keystore.jks

    b. Export the certificate. You can have a self-signed certificate or a certificate from a Certificate Authority.

    cfroot\jre\bin\keytool -export -alias certificatekey -keystore keystore.jks -rfc -file selfsignedcert.cer

    c. Copy the .jks file created in the remote host to the jetty\etc directory.
    d. Open the jetty\etc\jetty.xml file.
    e. Search for the string, To add a HTTPS SSL Listenerand then add the following entry:

    <Call name="addConnector">
    <Arg>
    <New class="org.mortbay.jetty.security.SslSocketConnector">
    <Set name="Port">8443</Set>
    <Set name="maxIdleTime">30000</Set>
    <Set name="keystore"><SystemProperty name="jetty.home" default="." />/etc/server.jks</Set>
    <Set name="password">changeit</Set>
    <Set name="keyPassword">changeit</Set>
    <Set name="truststore"><SystemProperty name="jetty.home" default="." />/etc/server.jks</Set>
    <Set name="trustPassword">changeit</Set>
    </New>
    </Arg>
    </Call>

    f. Update the keystore name, password, key password, and jks file in the entry.
    g. Search for the string, org.mortbay.jetty.bio.SocketConnector.
    h. Update the host with the port number of the remote host.
    i. Restart the jetty server.

Note: If the remote server is running on Windows Vista, Windows 7, or Windows Server 2008, start the jetty sever with admin privileges.

 

2. Do the following in the local host from where you add remote instance:
    a. Copy the .cer file created in the remote host to any of the locations.
    b. Import the certificate.

    cfroot\jre\bin\keytool.exe -importcert -keystore "cfroot\jre\lib\security\cacerts" -file selfsignedcert.cer -storepass password

 

3. Open wwwroot\CFIDE\ServerManager\ServerManager.air on the local host.
4. Specify the connection details.
5. Click Start/Stop Details.
6. Select HTTPS.
7. Provide the following information:
    App Server Username: User name for the admin component that you specified while installing ColdFusion. Default value is admin.
    *App Server Password: Password for the admin component.
    *Port: ColdFusion remote instances HTTPS port.
    *Server: ColdFusion remote instance name.
    *ColdFusion Version: For ColdFusion, 11.
    *Admin Server Port: Default https port is 8443. Port of the Jetty server.
    *Context Root: Value is AdminServlet.
8. Click Apply.
 

<strong>Setting up remote start and stop functionality using HTTP in Server Manager</strong>

You can set up start and stop remote instance functionality in Server Manager. To enable this feature, install Remote Instance Administrator while installing ColdFusion.

1. Do the following in the remote host:
    a. In the remote host, open the ColdFusion_installation\cfusion\jetty\etc\jetty.xml.
    b. Search for the string, org.mortbay.jetty.bio.SocketConnector.
    c. Update the host with the IP address of the remote host.
    d. Start the jetty server. Go to the ColdFusion_installation\cfusion\jetty directory and use jetty.exe. You can also use the jetty services in the Windows services.
2. Open wwwroot\CFIDE\ServerManager\ServerManager.air on the local host.
3. Specify the connection details.
4. Click Start / Stop Details.
5. Select HTTP.
6. Provide the following information:
App Server Username: User name for the admin component that you specified while installing ColdFusion. The default value is admin.
    *App Server Password: Password for the admin component.
    *Port: ColdFusion remote instance's HTTP port.
    *Server: ColdFusion remote instance name.
    *ColdFusion Version: For ColdFusion 11, the value 11.
    *Admin Server Port: Default https port is 8985. Port of the Jetty server.
    *Context Root: Value is AdminServlet.
7. Click Apply.
 

<strong>Managing clusters</strong>

Manage clusters using the ColdFusion Administrator.

1. In the ColdFusion Administrator, click Enterprise Manager > Cluster Manager.
2. Enter a cluster name and then click Add.
3. Click the cluster name and move the servers to the cluster based on the requirement.
4. (If necessary) Edit the multicast port.Multicast port is used to group the cluster members together. Default value of multicast port is 45564. After you create a cluster, the port is added in the cfroot\config\cluster.xml file. For more information on multicast port, see http://tomcat.apache.org/tomcat-7.0-doc/config/cluster-membership.html.
5. Specify if you need sticky session.Sticky session ensures that after a session is established on an instance, all future requests from the client are mapped to that instance.
Click Submit.

Note: Restart the web server if cluster instances are modified.

 

<strong>Adding a remote instance to a cluster</strong>

To add a remote instance to a cluster, add the cluster block to the remote instance's server.xml. Then, register the remote instance and add the instance to the cluster. For more information on configuring clusters on Tomcat, see http://tomcat.apache.org/tomcat-7.0-doc/cluster-howto.html.

1. Register the remote instance to the local machine.
2. Create a cluster in the local machine.
3. Open the cfroot_instance-name_runtime\conf\server.xml file of the remote instance.
4. Add the following block between the entries </host> }}and {{</engine>:


    <Cluster className="org.apache.catalina.ha.tcp.SimpleTcpCluster" channelSendOptions="8">
    <Manager notifyListenersOnReplication="true" 
    expireSessionsOnShutdown="false" className="org.apache.catalina.ha.session.DeltaManager">
    </Manager>
    <Channel className="org.apache.catalina.tribes.group.GroupChannel">
    <Membership port="45565" dropTime="3000" address="228.0.0.4"        className="org.apache.catalina.tribes.membership.McastService" frequency="500">
    </Membership>
    <Receiver port="4003" autoBind="100" address="auto" selectorTimeout="5000" maxThreads="6" className="org.apache.catalina.tribes.transport.nio.NioReceiver">
    </Receiver>
    <Sender className="org.apache.catalina.tribes.transport.ReplicationTransmitter">
    <Transport className="org.apache.catalina.tribes.transport.nio.PooledParallelSender">
    </Transport>
    </Sender>
    <Interceptor className="org.apache.catalina.tribes.
    group.interceptors.TcpFailureDetector">
    </Interceptor>
    <Interceptor className="org.apache.catalina.tribes.group.
    interceptors.MessageDispatch15Interceptor">
    </Interceptor>
    </Channel>
    <Valve className="org.apache.catalina.ha.tcp.ReplicationValve"
    filter="">
    </Valve>
    <Valve className="org.apache.catalina.ha.session.JvmRouteBinderValve">
    </Valve>

    <ClusterListener className="org.apache.catalina.ha.session.
    JvmRouteSessionIDBinderListener">
    </ClusterListener>
    <ClusterListener className="org.apache.catalina.ha.session.ClusterSessionListener">
    </ClusterListener>

    </Cluster>

 

5. In the entry, update the membership port with the multicast port of the cluster.
6. Using the ColdFusion Administrator of the local host, add the local instance and the remote instance to the cluster.

Note: If you enable sticky session, the JVM route of the remote instance and local instance must not be the same.

 

7. Restart all the instances.

Note: When adding a remote instance in a cluster, ensure that you comment out <Manager pathname="" /> in content.xml file located in <cf_home>\runtime\conf directory.

<strong>Configuring other web servers</strong>

Use the Web Server Configuration Tool to configure other web servers.

1. Run cfroot\runtime\bin\wsconfig.exe.
You can also configure web servers using the command-line interface as follows.
Configuring IIS

    wsconfig.exe -ws iis -site <site_no>

or

    wsconfig.exe -ws iis -site <site_name>

Configuring cluster

    wsconfig.exe -ws iis -site <site_no> -cluster <cluster-name>

Configuring Apache

    (Windows only) wsconfig.exe ws apache dir <apache_conf_directory>
    (Linux or MAC only) ./wsconfig ws apache dir <apache_conf_directory>

or

    (Windows only) wsconfig.exe ws apache dir <apache_conf_directory> bin <apache_bin_directory>/httpd script   <apache_bin_directory>/apachectl
    (Linux or Mac only) ./wsconfig ws apache dir <apache_conf_directory> bin <apache_bin_directory>/httpd script    <apache_bin_directory>/apachectl

Configuring cluster

    (Windows only) wsconfig.exe -ws apache dir <apache_conf_directory> -cluster <cluster-name>
    (Linux or MAC only) ./wsconfig -ws apache dir <apache_conf_directory> -cluster <cluster-name>

Unconfiguring IIS

    wsconfig.exe -remove -ws iis -site <site_no>

or

    wsconfig.exe -remove iis -site <site_name>

Unconfiguring Apache

    ./wsconfig -remove ws apache dir <apache_conf_directory>

or

    ./wsconfig -remove ws apache dir <apache_conf_directory> bin <apache_bin directory>/httpd script    <apache_bin_directory>/apachectl

Unconfiguring all webservers

    ./wsconfig -uninstall

Seeing the list of webservers

    ./wsconfig -list

 

<strong>Configuring Secured Socket Layer (SSL)</strong>

SSL allows the browser and the server to communicate over a secured connection. Data that is sent is encrypted at one side, transmitted, and then decrypted at the other end. For more information about SSL configuration on Tomcat, see http://tomcat.apache.org/tomcat-7.0-doc/ssl-howto.html.
To configure SSL for ColdFusion using the keytool utility, do the following:

1. Create a certificate file:
    a. Run the following command:cfroot\jre\bin\keytool -genkey -alias tomcat -keyalg RSA
    b. Type the details as per the instruction.

If you do not provide a password, the default password for keystore and key is changeit. If you don't want to use the default password, ensure that you provide the same password for the keystore and the key.

Running this command creates a certificate.keystore in the following location:

* Windows: C:\Documents and Settings_user's_director_y
* Linux: usr/home

2. Open the cfroot\cfusion\runtime\conf\server.xml file and search for the string Define a SSL HTTP/1.1.
3. Uncomment the connector details and update the section as follows:

    <Connector port="8443" protocol="HTTP/1.1"
    SSLEnabled="true" maxThreads="150" scheme="https"
    secure="true" keystoreFile="<certificate_location>\.keystore" keystorePass="<password>" keyAlias="tomcat"   clientAuth="false" sslProtocol="TLS" />


4. Restart ColdFusion.
5. Access ColdFusion using the following URL: https://<ip-address>:8443/CFIDE/administrator
 


<strong>Changing virtual directory and the doc root</strong>

Do the following to change the virtual directory and doc root:

1. Open CFInstallation\cfusion\runtime\conf\server.xml.
2. Under host block, search for the string, "To add virtual directory."
3. Uncomment the entry context path below.
4. To add a virtual directory, add the aliases attribute as shown below:

    <Context path="/" docBase="<absolute_path_to_cfrootectory>\wwwroot" WorkDir="       <cf_home>\runtime\conf\Catalina\localhost\tmp" aliases="/path1=<absolute_path_to_directory1>,/path2=        <absolute_path_to_directory2>"></Context>

Note: Alias path must include a leading /.

5. To change the doc root, change the docBase value in the above entry.For more details on the Context attributes, see http://tomcat.apache.org/tomcat-6.0-doc/config/context.html.

<strong>Changing the connector port for cfstat</strong>

You can use the connector output for logging cfstat metric. The cfconnector port is defined in the CFInstallation/cfusion/lib/neo-metric.xml file. If you have configured a connector, update the port with the connector port. The connector port (AJP port) is provided in the CFInstallation/cfusion/runtime/conf/server.xml.
To update the connector port using the Administrator console:

1. Login ColdFusion Administrator.
2. Click Debugging & Logging > Debug Output.
3. Update the connector port and click Submit Changes.

<strong>Enabling Search Engine Safe URLs</strong>

Search Engine Safe URL (SES) helps the search engines to index dynamic web pages. SES URLs pass parameters using slashes instead of default URL pattern. By default, SES is enabled for stand-alone installation of ColdFusion on Tomcat.

Note: SES is applicable only for stand-alone installation of Tomcat. It does not work if ColdFusion is deployed as a WAR file on Tomcat.

 

Note: If you wish to use custom SES URLs, also add the URL entry to the uriworkermap.properties file found in the wsconfig folder for your web server.

 

<strong>Enabling Secure Profile</strong>

ColdFusion allows you to secure ColdFusion server furthermore by enabling or disabling certain settings. When installing ColdFusion, you can enable Secure Profile by selecting the option when prompted on the Secure Profile screen. Further, you could provide a comma separate list of IP addresses that may be allowed to access the ColdFusion Administrator. In ColdFusion 11, IP address restriction is supported at the connector-level. For more information, see this document.

 

<strong>Changing the log rotation settings</strong>

You can change the log rotation settings such as maximum number of backup files and the size of the backup files.

1. Specify log file settings in the neo-logging.xml, located in the <ColdFusion_Home>\lib directory.
2. The size of coldfusion-out.log and coldfusion-error.log is set to 20MB by default. You can change the size of the log in the neo-logging.xml file by changing the maxOutLogSize setting.
3. You can also change the maximum number of backups of coldfusion-out.log and coldfusion-error.log that ColdFusion takes during log rotation within the neo-logging.xml file. Change the maxOutFileBackup setting.
You can change the settings of the remaining files in the ColdFusion Administrator by going to the Debugging and Logging > Logging Settings section. Change the Maximum file size and Maximum number of Archives settings accordingly.

 

<strong>Enabling persistent session</strong>

To persist a session after a Tomcat restart, do the following:

1. Open the cfroot\cfusion\runtime\conf\context.xml file.
Uncomment the Manager pathname node.

Note: Flex sessions are not persisted after a Tomcat restart.

 

<strong>Updating from an earlier version</strong>

If you have skipped the migration or you have to make modifications to the previous installation that has to be migrated, do the following:

1. Stop the server.
2. Save settings by copying the files cf_webapp_root/WEB-INF/cfusion/lib/neo-*.xml (of previous installation) to a directory named cf_X_settings (in which X is the earlier version of ColdFusion) in the cf_webapp_new_installation_root_directory/WEB-INF/cfusion/lib directory.
3. Edit the ColdFusion 11 cfusion/lib/adminconfig.xml file by setting the value of the runmigrationwizard and the {{migratecf}}X (in which X is the earlier version of ColdFusion) switch to true.
4. Restart the ColdFusion 11 application.
5. Browse to ColdFusion Administrator to run the migration wizard.
 


<strong>Uninstalling ColdFusion</strong>

Uninstalling ColdFusion deletes all program files and related components from your computer.

<strong>Uninstall ColdFusion from Windows</strong>
1. Select Start > Settings > Control Panel > Add/Remove Programs > Adobe ColdFusion 11.
2. Click Change/Remove.
3. When the program completes, remove any remaining files and directories in the cf_root directory.
4. In some cases, the uninstall program may require you to restart the computer. ColdFusion is deleted from your server.

<strong>Uninstall ColdFusion from UNIX</strong>
1. Log in as root.
2. Enter the following command to go to the cf_root/uninstall directory:

    cd cf_root/uninstall

3. Enter the following command:

    ./uninstall.sh

4. When the program completes, remove any remaining files and directories in the cf_root directory. ColdFusion is deleted from your server.
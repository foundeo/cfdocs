##Preparing to Install

Preparing to Install ColdFusion
Just before installing Adobe ColdFusion, review the ColdFusion product editions, system requirements, and other high-level considerations.

About the ColdFusion installation

ColdFusion provides a powerful and flexible installation and upgrade process. The ColdFusion installation process includes the following phases:

1. Plan the installation by determining your installation, configuration, and upgrade options.
2. Run the ColdFusion installer.
3. (JEE configuration only) Deploy and configure ColdFusion on your JEE application server. The ColdFusion installation process supports the following scenarios:
* New installation Install ColdFusion on a computer with no earlier ColdFusion installation.
* Upgrade installationYou can upgrade from ColdFusion 9 or ColdFusion 10. When upgrading, the installer preserves the existing settings and installs in a new directory, automatically assigning ports that do not conflict with the existing installation.You can install ColdFusion 11 in any of the following configurations:
    * Server configuration Lets you install ColdFusion with an embedded JEE server. This was formerly known as the stand-alone configuration. For enterprise and developer licenses, you can create and manage new ColdFusion instances. For information on installing the server configuration, see Installing the Server Configuration.

Note: ColdFusion does not offer a separate multi-server mode of installation.

 

    * JEE configuration (Enterprise Edition only) Lets you deploy ColdFusion 11 as a Java application running on a Java Enterprise Edition (JEE) application server, using a third-party JEE server, such as IBM WebSphere or Oracle WebLogic. When you use the JEE configuration, you can deploy ColdFusion multiple times on a single computer. For information on installing the JEE configuration, see Installing the JEE Configuration.

<strong>Installing ColdFusion</strong>

_ColdFusion product editions_
The ColdFusion product editions are available on the Adobe website. To view the product editions, go to www.adobe.com/go/learn_cfu_cfeditions_en.

_System requirements_
The ColdFusion system requirements are available on the Adobe website. To view the system requirements, including a list of supported JEE application servers, see www.adobe.com/go/learn_cfu_cfsysreqs_en.

_Installation considerations_
Before installing ColdFusion, review the considerations for installing or upgrading on your platforms.

Note: To use VisiBroker for CORBA connections in ColdFusion, see Enabling CORBA support (refer to Configuring your System) .

* ColdFusion 11, ColdFusion 10, ColdFusion 9, and ColdFusion 8 can coexist on the same system.
* In the case of ColdFusion cluster setup, any changes to the cluster settings, for example, adding a new member, or changing member port (in the ColdFusion Administrator) causes web server restart. This may result in page time-out.Refresh the page to resolve this issue.
* If ColdFusion uninstaller is not able to remove the connector for Apache (for example, in the case of Mac OS X), do the following to manually remove it:
* Delete the mod_jk.conf found
in {apache_install_location}/conf/ directory.
* Delete {cfroot}/config/wsconfig/<magic_number> folder which has the Apache connector file, mod_jk.so.
* Remove the following line from {apache_install_location}/conf/httpd.conf file:Include "{apache_install_location}\conf\mod_jk.conf".
* From the ColdFusion Administrator, when you wish to start multiple instances, start the cfusion instance first, and then start the other instances..
* When you run the ColdFusion uninstaller, the logs folder (ColdFusion_Home/cfusion/) is deleted.
* When you install ColdFusion, you can install the Administrator Component to start and stop remote server. Use the Remote Instance Administrator Component credentials to remotely start/stop the server from applications such as Server Manager, Instance Manager in ColdFusion Administrator, or ColdFusion Builder.
* JEE deployment of ColdFusion EAR or WAR on JRun is not supported. The EWS.jar }}must be present in the {{systemclasspath while deploying on a JEE server.

<strong>Installation considerations for all platforms</strong>
The following are installation considerations for all platforms:

<strong>Installation considerations for Windows</strong>
The following installation considerations are for Windows systems only:

* Do not configure the server running ColdFusion as a Primary Domain Controller (PDC) or Backup Domain Controller (BDC). Adobe follows the Microsoft network model, in which the first level is the PDC or BDC. These systems only manage the network or domain and are not designed to run application servers. ColdFusion should reside on the second level of Microsoft Windows stand-alone systems. Stand-alone servers can participate in a network or domain.
* Microsoft Windows XP handles only ten incoming TCP/IP connections concurrently. Therefore, Adobe does not recommend using this operating system in a production environment; use Microsoft Windows 2003 Server and Windows 2008 Server instead.

<strong>Installation considerations for UNIX</strong>
The following are installation considerations for UNIX systems only:

* For troubleshooting purposes, the installer creates the following log file during an installation or upgrade in UNIX: cf_root/Adobe_ColdFusion_10_InstallLog.log. If you contact AdobeTechnical Support for installation support, send them this file.
* If you are deploying the JEE configuration on a platform other than Linux or Solaris, use the ColdFusion_10_WWEJ_java.jar. This Java-only installer does not include features that require platform-specific binary files, such as C++ CFX support.
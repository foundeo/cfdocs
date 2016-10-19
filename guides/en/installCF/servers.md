##Understanding ColdFusion Server Profiles
To develop and deploy ColdFusion applications, you can use one of the multiple server profiles available when you install ColdFusion. The ColdFusion installer allows you to install the ColdFusion Server in the following profiles (modes):

<strong>Development profile:</strong> Use this profile to set up your development server with enhanced debugging and with low security settings.
<strong>Production profile:</strong> Use this profile to set up your internal server using RDS disabled and with some security settings
<strong>Production profile (secure):</strong> use this profile to set up a high secure production server with the most security settings configured by default.

Depending on the type of profile selected during the installation, the server will be automatically configured with the appropriate settings. Choose the right profile in the installer

Once you install the Server using a particular profile, you can't change the profile later.

The following table shows the difference between the 3 supported Server profiles:

Feature	- Development Profile ~	Production Profile | Production Profile (Secure)
Support for all types of debugging - Yes ~ No | No
Support for remote inspection -	Yes ~ No | No
Support for strict enforcement of complex passwords -	No ~ Yes | Yes
Support for remote start/stop -	Yes ~ No | No
Support for Weinre and other bundled servers (For instance, Node.js) -	Yes ~ No | No
Support for enabling unused servlets -	Yes ~ No | No
Support for Secure Profile. -	No ~ No | Yes



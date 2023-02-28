# ColdFusion Security Guide

Safeguarding your applications and data from attack requires addressing several important factors including server security, network security and code security.

This document will outline some of the basics of each, and link to further information.

## Server Security

Entire books have been written about server security and will generally include topics covering everything from the physical security of your server (e.g. can someone walk right up and take it) to common sense protections you should take to harden your server and the application software using it. For our purposes, we're going to focus on hardening your Adobe ColdFusion server(s) using the handy lock-down guides:

[ColdFusion 9 Lockdown Guide (PDF)](https://www.adobe.com/content/dam/cc/us/en/products/coldfusion/pdfs/white-papers/91025512-cf9-lockdownguide-wp-ue.pdf)

[ColdFusion 10 Lockdown Guide (PDF)](https://web.archive.org/web/20220228041500/www.adobe.com/content/dam/acom/en/products/coldfusion/pdfs/cf10/cf10-lockdown-guide.pdf)

[ColdFusion 11 Lockdown Guide (PDF)](https://web.archive.org/web/20220227161443/www.adobe.com/content/dam/acom/en/products/coldfusion/pdfs/cf11/cf11-lockdown-guide.pdf)

[ColdFusion 2016 Lockdown Guide (PDF)](https://web.archive.org/web/20220227161327/wwwimages.adobe.com/content/dam/acom/en/products/coldfusion/pdfs/coldfusion-2016-lockdown-guide.pdf)

[ColdFusion 2018 Lockdown Guide (PDF)](https://www.adobe.com/content/dam/cc/us/en/products/coldfusion/pdfs/cf-starter-kits/coldfusion-2018-lockdown-guide.pdf)

[ColdFusion 2021 Lockdown Guide (PDF)](https://www.adobe.com/content/dam/cc/us/en/products/coldfusion/pdfs/cf-starter-kits/coldfusion-2021-lockdown-guide-1.1.pdf)

There has been some attempt made at putting together a Lucee lockdown guide, but it is incomplete. A Google search for 'Lucee lockdown guide' provides useful links to blog posts and the following start to a guide:

[Lucee Lockdown Guide (HTML)](https://bit.ly/2imMVTF)

These lockdown guides will give you an excellent head start on protecting your servers, your application servers and your network, and those tasks while not (yet) explicitly called out in Lucee documentation, certainly all apply to Lucee equally. I suggest using the most recent Adobe lockdown guide as your basis for what to also apply to your Lucee servers, Adobe specific nuances aside, of course.

## ColdFusion Version Security

It is important to note that Adobe ColdFusion versions prior to version 10+, and all Railo server versions, have inherent security flaws that are not and will not be addressed. These weaknesses can be, and very often are, primary attack vectors for exploitation of those insecure systems.

If you are running Adobe ColdFusion versions prior to 10+ (e.g. v7, v8, v9, etc.), or any version of Railo, then you are currently **at high risk** of being attacked and should consider upgrading your version of Adobe to the latest version, or if you are using Railo to migrate to Railo's replacement server - [Lucee](https://bit.ly/1LWdyrv).

It is also important to note that Adobe, and Lucee, regularly release security patches for those application servers and you should regularly ensure that your server is on the latest security point release to avoid being the target of potential hackers. Likewise, much of the underlying infrastructure of these application servers, including Java, Tomcat, Apache, nginx, etc. also have security releases and it is important to keep these underlying services up to date with the latest security point release.

## Network Security

Again, entire books exist that go in depth with securing your network. For most CFML DevOps, this usually means ensuring you have hardened your server (using much of the same steps already outlined in the lockdown guides) to include your web server, application server (JRun, Tomcat, Jetty, etc.) and your database. Ensuring these application servers are consistently patched and configured to be the least granting of access is essential.

Layered security approaches work the best for network security, so having both a hardware firewall and intrusion detection system, and using the software based firewall that comes with your operating system is recommended. Limit access from the external network to your server only on the ports that need to be open. This is typically port 80 for http and port 443 for https. All other external ports should be blocked. If you need access to ssh, ftp or rdp ports, then you should secure your network with a VPN and only allow access to those ports to users on the VPN network. If you're a small shop on a small budget, then obviously exceptions will be made here, but understand it does increase the attack vectors by which hackers may attempt to commandeer your server(s).

Layering anti-virus, anti-malware and/or intrusion detection software should also be considered and implemented to ensure your systems are not infected or hijacked by rogue viruses and other malware.

## Code Security

Code security is an often overlooked and frequently misunderstood concept for many ColdFusion developers. It has either never come up for many, or they simply ignore possible security threats believing a breach will never happen to them. However, code security really is your first line of defense online – without it your web site or application could be hacked, data could be disclosed or outright destroyed. An attack from a random script kiddie trying to pwn as many systems as he could would be your best case scenario, an actual focused attacker trying to steal your data or use your application to hack further into your operating system, to get at your finance departments data, or your research departments data, etc. as a worst case scenario.

### Web Application Firewalls

Also known as WAF's a _Web Application Firewall_ can provide a basic level of protection from several vulnerabilities without requiring any code changes. A WAF can be especially useful in legacy applications that take a long time to find and fix security issues in.

Here are some popular WAFs for use with CFML:

[FuseGuard by Foundeo](https://foundeo.com/security/) - commercial product, written in CFML, runs from your `Application.cfc`

[dotDefender by Applicure](http://www.applicure.com/Products/dotdefender) - commercial product, runs at the web server (IIS) level.

### OWASP

The [Online Web Application Security Project](https://bit.ly/1devYyR) is the go-to resource for all things related to web application security - from threat assessments to tools, tips and techniques on how to avoid security pitfalls, this is the place to be and should be on your reference list. [OWASP Top 10 Security Threats](https://bit.ly/1bJUzsy) is an excellent place to start exploring.

### Obfuscation

Obfuscation is the art of hiding things in plain sight, and using obfuscation in our application designs can significantly improve application security.

[Click Here](/security-obfuscation) to learn how obscuring data will help protect you from parameter tampering.

### Encryption

Encryption is the technology that allows us to take plain text messages and make them unreadable by both humans and other machines that do not have access to the encryption key used to [encrypt()](/encrypt) the data.

[Click Here](/security-encryption) to learn how encrypting your data will help protect you from both parameter tampering and information disclosure.

### Authentication

Authentication is the process by which you validate that a particular user is allowed to login to your application. This should not be confused with *access control*, which determines what parts of your application a user has access to. Authentication is merely the process of ensuring a user can login.

[Click Here](/security-authentication) to learn how authentication can be used to provide logins for your users to your application.

### Session Management

Session management is the process by which you ensure that a logged in user maintains a valid session throughout the session lifecycle and is used to ensure that your user has not timed out or has not had their session hijacked by a potential hacker.

[Click Here](/security-session-management) to learn how to build your own session management routines to maintain sessions for your logged in users.

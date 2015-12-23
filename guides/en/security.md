# ColdFusion Security Guide

Safeguarding your applications and data from attack requires addressing several important factors including server security, network security and code security. 

This document will outline some of the basics of each, and link to further information where prudent.

## Server Security

Entire books have been written about server security and will generally include topics covering everything the physical security of your server (e.g. can someone walk right up and take it) to common sense protections you can commonly take to harden your server and the application software using it. For our purposes, we're going to focus on hardening your Adobe ColdFusion server(s) using the handy lock-down guides:

[ColdFusion 9 Lockdown Guide (PDF)](http://adobe.ly/1IeIilP)

[ColdFusion 10 Lockdown Guide (PDF)](http://adobe.ly/1QRsiHL)

[ColdFusion 11 Lockdown Guide (PDF)](http://adobe.ly/1mdJkEk)

There has been some attempt made at putting together a Lucee lockdown guide, but it is incomplete. A Google search for 'Lucee lockdown guide' provides useful links to blog posts and the following start to a guide:

[Lucee Lockdown Guide (HTML)](http://bit.ly/1OebHiz)

These lockdown guides will give you an excellent head start on protecting your servers, your application servers and your network, and those tasks while not (yet) explicitly called out in Lucee documentation, certainly all apply to Lucee equally. I suggest using the CF11 lockdown guide as your basis for what to also apply to your lucee servers, Adobe specific nuances aside, of course.

## Network Security

Again, entire books exist that go in depth with securing your network. For most CFML DevOps, this usually means ensuring you have hardened your server (using much of the same steps already outlined in the lockdown guides) to include your web server, application server (JRun, Tomcat, Jetty, etc.) and your database. Ensuring these application servers are consistently patched and configured to be the least granting of access is essential. 

Layered security approaches work the best for network security, so having both a hardware firewall and intrusion detection system, and using the software based firewall that comes with your operating system is recommended. Limit access from the external network to your server only on the ports that need to be open. This is typically port 80 for http and port 443 for https. All other external ports should be blocked. If you need access to ssh, ftp or rdp ports, then you should secure your network with a VPN and only allow access to those ports to users on the VPN network. If you're a small shop on a small budget, then obviously exceptions will be made here, but understand it does increase the attack vectors by which hackers may attempt to commandeer your server(s). 

Layering anti-virus, anti-malware and/or intrusion detection software should also be considered and implemented to ensure your systems are not infected or hijacked by rogue viruses and other malware.

## Code Security

Code security is an often overlooked and frequently misunderstood concept for many ColdFusion developers. It has either never come up for many, or they simply ignore possible security threats believing a breach will never happen to them. However, code security really is your first line of defense online – without it your web site or application could be hacked, data could be disclosed or outright destroyed. An attack from a random script kiddie trying to pwn as many systems as he could would be your best case scenario, an actual focused attacker trying to steal your data or use your application to hack further into your operating system, to get at your finance departments data, or your research departments data, etc. as a worst case scenario. 

The same mistakes Adobe has made in allowing outsiders to locate and use an attack surface within the cfadminapi a few years ago are made by ColdFusion developers every day. But there are simple, and elegant, techniques that can be employed to help reduce the surface area of attack against your applications. 

Before I go further I should point out that there is a short-cut you could take here… say, for instance, you have a goliath of old legacy spaghetti code and finding and fixing every weakness would not only be time consuming but possibly insurmountable for your organization… and that short-cut is to inject another layer of software that helps mitigate some of the weaknesses. If you find yourself in this situation, I would recommend taking a look at the following stopgap solutions:

[Fuse Guard by Foundeo](https://foundeo.com/security/)

[dotDefender by Applicure](http://www.applicure.com/Products/dotdefender)

There are other solutions out there, of course, but these are the two I have had experience with and they have worked well as a stand-in while finding and fixing the major security flaws.

### OWASP
The [Online Web Application Security Project](http://bit.ly/1devYyR) is the go-to resource for all things related to web application security - from threat assessments to tools, tips and techniques on how to avoid security pitfalls, this is the place to be and should be on your reference list. [OWASP Top 10 Security Threats](http://bit.ly/1bJUzsy) is an excellent place to start exploring.

### Obfuscation
Obfuscation is the art of hiding things in plain sight, and using obfuscation in our application designs can significantly improve application security.

[Click Here](/security-obfuscation) to learn how obscuring data will help protect you from paramter tampering.

### Encryption
Encryption is the technology that allows us to take plain text messages and make them unreadable by both humans and other machines that do not have access to the encryption key used to [encrypt()](/encrypt) the data.

[Click Here](/security-encryption) to learn how encrypting your data will help protect you from both parameter tampering and information disclosure.
cs360
=====

CS 360 Web Application Lab. License Plates project.

Our application will be available for viewing at www.cheapasfree.com as content is added.  Right now there is a sample app up and running for your viewing pleasure but it is not this application.

Parking Enforcement for HOA/Private Communities

The Problem-
	In HOA/private communities it is hard to know which vehicles belong to residents and which ones belong to guests.  This makes it hard to know which vehicles are in violation of the communities parking regulations.  Some communities have parking stickers or passes or similar which identify the community of the vehicles in it but don’t provide quick feedback to owners of violations.  This system also doesn’t keep track of a count of violations.

The Solution-
	A web server that allows the residents to input their vehicle(s) information along with contact information (i.e. email, phone, address).  This allows residents to be informed of violations quicker than receiving a written citation or finding their vehicle towed/booted.  This also allows the community to keep track of vehicles regularly found in violation.  This could also be scalable to larger ‘communities’ (like Provo City with their recent legislation on predatory towing).

Framework-
	Ruby on Rails (Backend) with Twitter Bootstrap and JavaScript (Front end)

Team-
	Lawrence Williams
	Sam Gubler
	Jeffrey Thompson







Features:
Ideal Feature List:

master admin login for:
 managing types of violations
 reviewing vehicles marked as in violation
   
 signup page for people to register their vehicle(s)

 login page for:
  adding/deleting vehicles from account
  updating contact preferences

 server to send notification to admin of pending violations

 server to send notification to owner of vehicle in violation

 posted violations have photo attached for proof of violation

 change Active Record from using sqlite3 to mySQL or other.


 Planned Features for Implementation this Semester:

 master admin login

 signup page for residents
  allowing entry of name, plate number and email address

 login for residents
  allowing change of vehicle info and view of vehicle history

 email notification to admin

 email notification to resident

# Milestones

## Milestone 1

Create scafolding for reporting violations and registering vehicles

Start working on automated mailers. This isn't automated yet but we can send emails from our website


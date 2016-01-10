# BazarNG
ZeroNights HackQuest 3rd task: http://hackquest.zeronights.org/#day3 

It contains several typical vulnerabilities:
- Execution after redirect
- HQL injection (Hibernate + mysql)
- RCE via XMLDecoder or Java binary serialization in REST API (Restlet)

You can use BazarNG as a laboratory for testing the exploitation of these vulns.

Installation steps for Ubuntu:
- install tomcat7, openjdk7, mysql
  sudo apt-get install tomcat7 openjdk-7-jdk mysql-server
- put context.xml to /var/lib/tomcat7/conf
- download last mysql-jdbc-connector (https://dev.mysql.com/downloads/connector/j/) and put it to /usr/share/tomcat7/lib/
- put ZN_HQ to /var/lib/tomcat7/webapps/
- login to the mysql as root:

  mysql -u root -p

- create a new db:

  CREATE DATABASE webappdb

- create a new user for a db:
  
  CREATE USER 'webappuser'@'localhost' IDENTIFIED BY 'n5pC6rVUOqxI';
  GRANT SELECT,DELETE,INSERT,UPDATE, ON webappdb.* TO 'webappuser'@'localhost';

- add content to the db
  
  USE webappdb
  SOURCE /path/to/zn_hq_2015.sql

Then you can start the task:
  
  service mysql start
  service tomcat7 start
  


Todo:
- create a docker container

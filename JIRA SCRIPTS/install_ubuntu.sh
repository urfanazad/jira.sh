#Tutorial Jira - Installation on Ubuntu Linux
#Download the Jira installation package from the official website.
mkdir /downloads/jira -p
cd /downloads/jira
wget https://product-downloads.atlassian.com/software/jira/downloads/atlassian-jira-core-8.5.0.tar.gz
#Extract and install the Jira software.
cd /downloads/jira
tar -zxvf atlassian-jira-core-8.5.0.tar.gz -C /opt
ln -s /opt/atlassian-jira-core-8.5.0-standalone /opt/jira
mkdir /opt/jira-home
#Copy the MySQL Java connector to the Jira's LIB directory.
cp /downloads/mysql/mysql-connector-java-5.1.48/mysql-connector-java-5.1.48.jar  /opt/jira/lib/
#Set the proper file permission.
chmod 700 /opt/jira -R
chmod 700 /opt/jira-home -R
#You need to create an environment variable named JIRA_HOME.
#Let’s create a file to automate the required environment variables configuration
vi /etc/profile.d/jira.sh
#/bin/bash
export JIRA_HOME=/opt/jira-home
#Reboot the computer.
reboot
#Start the Jira server.
#Jira may take a long time to start.
/opt/jira/bin/start-jira.sh
To run JIRA in the foreground, start the server with start-jira.sh -fg
executing as current user

                  `sMMMMMMMMMMMMMM+
                     MMMMMMMMMMMMMM
                     :sdMMMMMMMMMMM
                             MMMMMM
          `sMMMMMMMMMMMMMM+  MMMMMM
             MMMMMMMMMMMMMM  +MMMMM
              :sMMMMMMMMMMM   MMMMM
                     MMMMMM    `UOJ
   `sMMMMMMMMMMMMM+  MMMMMM
     MMMMMMMMMMMMMM  +MMMMM
      :sdMMMMMMMMMM   MMMMM
             MMMMMM    `UOJ
             MMMMMM
             +MMMMM
              MMMMM
               `UOJ

      Atlassian Jira
      Version : 8.5.0


If you encounter issues starting or stopping JIRA, please see the Troubleshooting guide at https://docs.atlassian.com/jira/jadm-docs-085/Troubleshooting+installation

Using JIRA_HOME:       /opt/jira-home

Server startup logs are located in /opt/jira/logs/catalina.out
Using CATALINA_BASE:   /opt/jira
Using CATALINA_HOME:   /opt/jira
Using CATALINA_TMPDIR: /opt/jira/temp
Using JRE_HOME:        /usr/lib/jvm/java-11-openjdk-amd64
Using CLASSPATH:       /opt/jira/bin/bootstrap.jar:/opt/jira/bin/tomcat-juli.jar
Using CATALINA_PID:    /opt/jira/work/catalina.pid
Tomcat started.
#Use the NETSTAT command to verify if the service is running on port 8080.
netstat -nl | grep -E -i "proto|8080"
#In our example, the Jira service is running on port 8080.
Proto Recv-Q Send-Q Local Address           Foreign Address         State
tcp6       0      0 :::8080                 :::*                    LISTEN
Proto RefCnt Flags       Type       State         I-Node   Path
#Optinally, you may take a look at Jira log file.
tail -f /opt/jira-home/log/atlassian-jira.log
Open your browser and enter the IP address of your web server plus :8080

In our example, the following URL was entered in the Browser:

• http://public:8080







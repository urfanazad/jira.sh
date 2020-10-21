Tutorial Jira - Java Installation on Ubuntu Linux
Install the Java JDK package.

#Install the Java JDK package.
apt-get update
apt-get install default-jdk
#Use the following command to find the Java JDK installation directory.
update-alternatives --config java
#This command output should show you the Java installation directory.
There is only one alternative in link group java (providing /usr/bin/java): /usr/lib/jvm/java-11-openjdk-amd64/bin/java
Nothing to configure.
#in our example, our Java JDK is installed under the folder: /usr/lib/jvm/java-11-openjdk-amd64
#Now, you need to create an environment variable named JAVA_HOME.
#Let’s create a file to automate the required environment variables configuration
vi /etc/profile.d/java.sh
#/bin/bash
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
reboot
#Use the following command to verify if the JAVA_HOME variable was created.
env | grep JAVA_HOME
#Here is the command output:
JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
#Use the following command to test the Java installation.
java -version
#Here is the command output:
openjdk version "11.0.4" 2019-07-16
OpenJDK Runtime Environment (build 11.0.4+11-post-Ubuntu-1ubuntu219.04)
OpenJDK 64-Bit Server VM (build 11.0.4+11-post-Ubuntu-1ubuntu219.04, mixed mode, sharing)
You have finished the Java installation required by Jira.












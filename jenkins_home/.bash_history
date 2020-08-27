cd /tmp/
ls
./script.sh 
./script.sh sahil gulati
pwd
ssh remote_user@opensshServer
cd /tmp/
ls
ssh -i remote-key remote_user@opensshServer
ping www.google.com
clear
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo su 
su
clear
su root
ping remote_host
ping opensshServer
ansible -i hosts -m ping test1
pwd
cd /var/jenkins_home/ansible/
ansible -i hosts -m ping test1
clear
cd /var/jenkins_home/ansible/
ls
ansible-playbook -i hosts play.yml 
vi play.yml 
cd /var/jenkins_home/
cd ansible/
ansible-playbook -i hosts play.yml 
cd /var/jenkins_home/ansible/
ls
java -version
$JAVA_HOME
job('Maven Through DSL') {
description('This is a maven DSL Job')
 scm {
        github('jenkins-docs/simple-java-maven-app', 'master')
    }
 steps {
 maven {
 rootPOM('/var/jenkins_home/workspace/Maven Through DSL/pom.xml')
 goals('clean test pacakge')
 }
 
 }
}clear
mvn -f "/var/jenkins_home/workspace/Maven Through DSL/pom.xml" clean test 
exit

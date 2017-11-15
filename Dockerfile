FROM jenkins
LABEL Name=npmJenkins Version=0.0.1 
USER root
WORKDIR /usr/src/
COPY ./setup_6.x.sh /usr/src/
RUN bash setup_6.x.sh
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential
RUN npm config set registry https://registry.npm.taobao.org 
RUN npm install yarn -g
RUN yarn config set registry https://registry.npm.taobao.org
RUN apt-get install -y apt-transport-https ca-certificates curl software-properties-common
ADD http://mirrors.jenkins.io/war-stable/latest/jenkins.war /usr/share/jenkins/

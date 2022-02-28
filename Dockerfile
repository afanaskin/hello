FROM alpine:3.15.0
WORKDIR app
ADD /var/lib/jenkins/workspace/pipe_1/target/WebApp.war ./app

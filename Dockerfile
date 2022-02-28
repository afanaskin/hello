FROM alpine:3.15.0
WORKDIR app
COPY /var/lib/jenkins/workspace/pipe_1/target/WebApp.war .

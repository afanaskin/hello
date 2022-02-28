FROM alpine:3.15.0
WORKDIR app
COPY 10.129.0.18/var/lib/jenkins/workspace/pipe_1/target/WebApp.war /app

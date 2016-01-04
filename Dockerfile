FROM frolvlad/alpine-oraclejdk8:slim
EXPOSE 8080
ADD sample.jar sample.jar
CMD java -jar sample.jar

FROM dockerfile/ubuntu

## Install Java.
RUN \
  apt-get update && \
  apt-get install -y openjdk-6-jdk && \
  rm -rf /var/lib/apt/lists/*


# Define working directory.
WORKDIR /data

ADD somefile.txt somefile.txt

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-6-openjdk-amd64

# Define default command.
CMD ["bash"]

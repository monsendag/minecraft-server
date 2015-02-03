
# Base system is the LTS version of Ubuntu.
FROM dockerfile/java:oracle-java8

# add server script
ADD server.sh /server.sh

# expose default minecraft port
EXPOSE 25565

# expose directory for storing minecraft world and configuration
VOLUME ["/data"]

# start server
CMD ["/server.sh"]

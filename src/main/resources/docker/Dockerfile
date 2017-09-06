FROM anapsix/alpine-java:8_server-jre_unlimited
# Copy all the static contents to be included in the Docker image.
COPY application.jar /application.jar

COPY run.sh /run.sh
# Make all scripts in the bin directory executable. Includes start-script.
RUN chmod +x run.sh

CMD [ "/run.sh" ]
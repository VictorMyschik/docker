FROM ubuntu:latest

# Install cron
RUN apt-get update && apt-get -y install cron

COPY jobs /etc/cron.d/jobs

RUN chmod 0644 /etc/cron.d/jobs

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log
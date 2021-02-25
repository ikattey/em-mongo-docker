FROM library/mongo:4.4.4

# CF app listens on this port. Only one port supported per image
# see: https://docs.cloudfoundry.org/devguide/deploy-apps/push-docker.html#-port-configuration
EXPOSE 27017

COPY ./init-mongo.sh /docker-entrypoint-initdb.d/init-mongo.sh

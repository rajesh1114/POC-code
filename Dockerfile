From jboss/wildfly:18.0.1.Final
#COPY target/sparkjava-hello-world-1.0.war  /opt/jboss/wildfly/standalone/deployments
USER root
RUN chown -R jboss:jboss /opt/jboss/wildfly

USER jboss
COPY --chown=jboss:jboss target/api.war /opt/jboss/wildfly/standalone/deployments

#ADD sparkjava-hello-world-1.0.war /opt/jboss/wildfly/standalone/deployments
# test docker

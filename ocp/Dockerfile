FROM scratch
#FROM registry.access.redhat.com/jboss-datavirt-6/datavirt63-openshift

LABEL Name="JDV KING DOP Demo" Version="latest"

#COPY modules /extensions/modules/
COPY install.sh /extensions/
COPY extensions/DOP.vdb /extensions/
COPY extensions/DOP.vdb.dodeploy /extensions/
#COPY application-roles.properties /extensions/
#COPY extensions/datasources.env /extensions/
#COPY extensions/jgroups.jceks /extensions/
#COPY extensions/keystore.jks /extensions/
#COPY extensions/resourceadapters.env /extensions/
#COPY install.properties /extensions/
#RUN /opt/eap/bin/add-user.sh -a --silent=true -u 'king' -p 'king.2017' -g 'admin,connect,odata'

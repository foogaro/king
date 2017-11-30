#!/bin/bash

set -x

source /usr/local/s2i/install-common.sh
#source /usr/local/s2i/install-teiid-common.sh

injected_dir=$1

#source /usr/local/s2i/install-common.sh
#install_modules ${injected_dir}/modules
configure_drivers ${injected_dir}/drivers.env
#source /usr/local/s2i/install-teiid-common.sh
#echo -n "injected_dir => " ${injected_dir}
#install_deployments ${injected_dir}/DOP.vdb
#install_deployments DOP.vdb
#configure_translators ${injected_dir}/translators.env
#echo "Adding the OData role to the King user..."
#/opt/eap/bin/add-user.sh -a --silent=true -u "king" -p "king.2017" -g "admin,connect,odata"
echo "Adding the OData role to the user luigi..."
/opt/eap/bin/add-user.sh -a --silent=true -u "luigi" -p "luigi.2017" -g "admin,connect,odata,user"
echo "Added the OData role to the user luigi"

exit 0

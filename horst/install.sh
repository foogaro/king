#!/bin/bash

set -x

source /usr/local/s2i/install-common.sh

injected_dir=$1

configure_drivers ${injected_dir}/drivers.env

source /usr/local/s2i/install-teiid-common.sh

echo "Adding the OData role to the user luigi..."
/opt/eap/bin/add-user.sh -a --silent=true -u "luigi" -p "luigi.2017" -g "admin,connect,odata,user"
echo "Added the OData role to the user luigi"

exit 0

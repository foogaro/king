#!/bin/bash

set -x

source /usr/local/s2i/install-common.sh
source /usr/local/s2i/install-teiid-common.sh

injected_dir=$1

#source /usr/local/s2i/install-common.sh
#install_modules ${injected_dir}/modules
#configure_drivers ${injected_dir}/drivers.env
#source /usr/local/s2i/install-teiid-common.sh
echo -n "injected_dir => " ${injected_dir}
#install_deployments ${injected_dir}/DOP.vdb
install_deployments ${injected_dir}/DOP.vdb
echo -n "DOP.vdb copied"
#configure_translators ${injected_dir}/translators.env
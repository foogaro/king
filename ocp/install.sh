#!/bin/bash

injected_dir=$1
source /usr/local/s2i/install-common.sh
#install_modules ${injected_dir}/modules
#configure_drivers ${injected_dir}/drivers.env
#source /usr/local/s2i/install-teiid-common.sh
source /usr/local/s2i/install-teiid-common.sh
install_deployments ${injected_dir}/DOP.vdb
#configure_translators ${injected_dir}/translators.env
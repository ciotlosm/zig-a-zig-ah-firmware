#!/usr/bin/with-contenv bashio

bashio::log.info "Starting flashing procedure ..."

./cc2538-bsl-master/cc2538-bsl.py \
    -p $(bashio::config 'serial_port') \
    -evw znp_CC26X2R1_LAUNCHXL_tirtos_ccs.hex
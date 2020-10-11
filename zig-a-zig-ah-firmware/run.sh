#!/usr/bin/with-contenv bashio

bashio::log.info "Starting flashing procedure ..."

./cc2538-bsl-master/cc2538-bsl.py \
    -p /dev/serial/by-id/usb-1a86_USB_Serial-if00-port0 \
    -evw znp_CC26X2R1_LAUNCHXL_tirtos_ccs.hex
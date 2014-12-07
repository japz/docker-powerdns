#!/usr/bin/env bash
pdns_recursor --daemon=no --local-address=0.0.0.0 --local-port=5300 $PDNS_OPTS


#!/usr/bin/env bash
env

opts=""
[ -n "$RECURSOR_PORT" ] && opts="$opts --recursor=$RECURSOR_PORT_5300_TCP_ADDR:$RECURSOR_PORT_5300_TCP_PORT"
[ -n "$MYSQL_PORT" ] && opts="$opts --launch=gmysql --gmysql-host=$MYSQL_PORT_3306_TCP_ADDR"

cmd="pdns_server $opts $PDNS_OPTS"
echo "Executing: $cmd"

$cmd


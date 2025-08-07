#!/usr/bin/env bash
set -e

a=$(find {{ .xbee.install }} -maxdepth 1 -mindepth 1 -type d -name "amazon*" -printf '%f\n')
ln -s {{ .xbee.install }}/$a {{ .javaHome }}
chown -R {{ .xbee.user}}:{{ .xbee.group }} {{ .xbee.install }}/$a

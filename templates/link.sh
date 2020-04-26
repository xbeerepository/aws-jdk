#!/usr/bin/env bash
set -e

a=$(find {{ .pack.installDir }} -maxdepth 1 -mindepth 1 -type d -name "amazon*" -printf '%f\n')
ln -s {{ .pack.installDir }}/$a {{ .pack.javaHome }}
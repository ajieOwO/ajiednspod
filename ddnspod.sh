#!/bin/sh
#

# Import ardnspod functions

# . /data/shell/ddns/ardnspod
. /data/shell/ddns/ajiednspod

# Combine your token ID and token together as follows
ajieToken="355981,33b2144a9eacba7e861d004389d343f3"

# Web endpoint to be used for querying the public IPv6 address
# Set this to override the default url provided by ardnspod
# arIp6QueryUrl="https://6.ipw.cn"

# Return code when the last record IP is same as current host IP
# Set this to a value other than 0 to distinguish with a successful ddns update
# arErrCodeUnchanged=0

# Place each domain you want to check as follows
# you can have multiple arDdnsCheck blocks

# IPv4:
#arDdnsCheck "ajiebox.com" "nasv6"

# IPv6:
refreshDNSRecord "ajiebox.com" "nasv6"

refreshDNSRecord "ajiebox.com" "*.nasv6"

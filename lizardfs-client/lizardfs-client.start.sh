#! /bin/bash
function start_syslog() {
    local log_file="/var/log/syslog"
    touch ${log_file}
    chown syslog:syslog ${log_file}
    rsyslogd
    tail -F -n 0 ${log_file}
}

function start_client() {
    mkdir /lizard
    lfsmount /lizard -H master -P 9421 -S /
}

start_client
start_syslog

#! /bin/bash
function start_syslog() {
local log_file="/var/log/syslog"
  touch ${log_file}
  chown syslog:syslog ${log_file}
  rsyslogd
  tail -F -n 0 ${log_file} &
}

data_path="/var/lib/lizardfs/"
function start_chunkserver() {
  chown lizardfs:lizardfs -R ${data_path}
  lfschunkserver -d -u
}

start_syslog
start_chunkserver
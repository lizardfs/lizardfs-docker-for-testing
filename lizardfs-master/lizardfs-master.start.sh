#! /bin/bash
function start_syslog() {
local log_file="/var/log/syslog"
  touch ${log_file}
  chown syslog:syslog ${log_file}
  rsyslogd
  tail -F -n 0 ${log_file} &
}

metadata_dir="/var/lib/lizardfs/"
function fix_metadata() {
  ls -la ${metadata_dir}
#TODO (aNeutrino) review restore commands
  lfsmetarestore -a
  rm ${metadata_dir}/metadata.mfs.lock
}

function start_master() {
  chown lizardfs:lizardfs -R ${metadata_dir}
  ls -la ${metadata_dir}
  lfsmaster -d -u start
}

start_syslog
fix_metadata
start_master

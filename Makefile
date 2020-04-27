BASE_IMAGE ?= "ubuntu:20.04"

.PHONY:
build:
	BASE_IMAGE=$(BASE_IMAGE) docker-compose build

.PHONY:
run: build
	docker-compose up

.PHONY:
clean:
	rm -Rf ./volumes/lizardfs-master/var/lib/lizardfs/*
	rm -Rf ./volumes/lizardfs-master/var/lib/lizardfs/.mfsmaster.lock
	rm -f ./volumes/lizardfs-master/var/log/syslog
	echo -n "MFSM NEW" > ./volumes/lizardfs-master/var/lib/lizardfs/metadata.mfs

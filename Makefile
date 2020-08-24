BASE_IMAGE ?= "ubuntu:20.04"

.PHONY:
build:
	BASE_IMAGE=$(BASE_IMAGE) docker-compose build

.PHONY:
run: build
	docker-compose up

.PHONY:
clean:
	docker-compose down
	rm -Rf ./volumes/lizardfs-master/var/lib/lizardfs/*
	rm -f ./volumes/lizardfs-master/var/lib/lizardfs/.mfsmaster.lock
	rm -f ./volumes/lizardfs-chunkserver/var/lib/lizardfs/.mfschunkserver.lock
	rm -f ./volumes/lizardfs-chunkserver/var/lib/lizardfs/csstats.mfs
	rm -f ./volumes/lizardfs-chunkserver/hdd/.lock
	rm -Rf ./volumes/lizardfs-chunkserver/hdd/*
	echo -n "MFSM NEW" > ./volumes/lizardfs-master/var/lib/lizardfs/metadata.mfs

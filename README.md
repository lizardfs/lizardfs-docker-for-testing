# lfs-docker

The ultimate goal of this repository is to create all advantages of docker containers into LizardFS project.

## Warning - about testing and education usage only

This project was created for making fast DEMOs and playground purpose.

**It should NOT be use for production data!**

## Requirements

Project requires `docker` and `docker-compose`

Also some (`1GB`) free space on hdd is recommended for efficent simulation of storage replication.

## Usage

Open terminal/console and execute those commands:

```shell
git clone https://github.com/aNeutrino/lfs-docker.git
cd lfs-docker
make
docker-compose up
```

Visit this URL: http://localhost:9425/mfs.cgi?sections=CS%7CIN

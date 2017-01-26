# DockerDrive
A Docker imlementation for the Google Drive Client

Usage
Pealse refer to http://yourcmc.ru/wiki/Grive2#Installation

For a first time Drive sync

$ docker pull ashael/dockerdrive 
or 
$docker build Dockerfile (after git clone)

$mkdir /home/MyGoogleDriveFoldeName
$cd /home/MyGoogleDriveFoldeName
$ docker run -it -v $PWD:/home/grive -w /home/grive grive

Then inside the Container

$ grive -a

After this, for Sync only

$ docker run --rm -v $PWD:/home/grive -w /home/grive --name "Gdrive" grive grive

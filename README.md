# A Linux Container implementation of the grive client

## Singularity Drive
A Singularity imlementation for the Google Drive Client

### Usage
Pealse refer to http://yourcmc.ru/wiki/Grive2#Installation

For a first time Drive sync
```bash
$ sudo singularity create -s 1024 /some/path/grive.img 
```
and

```bash
$ sudo singularity bootstrap /some/path/grive.img grive.def
```
or 
```bash
 $ singularity pull --name "grive.img" shub://ArangoGutierrez/grive
 ```

In your host 
```bash
$ mkdir /home/MyGoogleDriveFoldeName
```
```bash
$ cd /home/MyGoogleDriveFoldeName
```
```bash
$ singularity run /some/path/grive.img -a
```

After this, for Sync only
```bash
$ cd /home/MyGoogleDriveFoldeName
```
```bash
$ singularity run /some/path/grive.img
```
## Docker Drive
A Docker imlementation for the Google Drive Client

### Usage
Pealse refer to http://yourcmc.ru/wiki/Grive2#Installation

For a first time Drive sync
```bash
$ docker pull ashael/dockerdrive 
```
or 
```bash
$docker build Dockerfile (after git clone)
```
```bash
$ mkdir /home/MyGoogleDriveFoldeName
$ cd /home/MyGoogleDriveFoldeName
$ docker run -it -v $PWD:/home/grive -w /home/grive grive
```

Then inside the Container
```bash
$ grive -a
```

After this, for Sync only
```bash
$ docker run --rm -v $PWD:/home/grive -w /home/grive --name "Gdrive" grive grive
```

# DockerDrive
A Docker imlementation for the Google Drive Client

Usage
Backup
Since grive is still «beta» or «alpha» you should better keep a backup copy of your google directory.

First run
Change to your google drive sync directory, and run grive -a:

cd /home/you/yourGoogleDrive/
grive -a
 The «-a» option is only needed the very first time you run grive.

Visit the URL that comes up, then post the auth code given (you must have been logged into Google). You should get some messages including «Synchronizing files» … now you are running.

Syncs
To sync, you must run the program manually (there is no «real-time watching» yet). At the prompt, type:

cd /home/you/yourGoogleDrive/
grive
You can set up a cron job, if you want this done on a regular basis.

Command line options
Short option	Long option	Description
-h	--help	Produce help message
-v	--version	Display Grive version
-a	--auth	Request authorization token
-p arg	--path arg	Root directory to sync
-s arg	--dir arg	Single subdirectory to sync (remembered for next runs)
-V	--verbose	Verbose mode. Enable more messages than normal.
--log-http arg	Log all HTTP responses in this file for debugging.
--new-rev	Create new revisions in server for updated files.
-d	--debug	Enable debug level messages. Implies -v.
-l arg	--log arg	Set log output filename.
-f	--force	Force grive to always download a file from Google Drive instead of uploading it.
--dry-run	Only detect which files need to be uploaded/downloaded, without actually performing them.
--ignore arg	Perl RegExp to ignore files (matched against relative paths, remembered for next runs).

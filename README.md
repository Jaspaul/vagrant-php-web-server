Yet Another Vagrant PHP Web Server
==================================

A simple vagrant configuration for a webserver running php with composer mainly to run Laravel projects.

## Notes
========

* To get Laravel running within the created VM the app/storage folder had to be chmoded to 777
```
chmod -R 777 app/storage
```

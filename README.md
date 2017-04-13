# Linux-Repo
git@github.com:habibmasri/Linux.git
This bash script will conifgure a cron job that will:
- Search for core files in the application directory
- Compresses the logs direcotry and core files then moves them to antoher dir
- Empties all the logs under appDir/logs and deletes the core files under appDir
- Deletes all the zipped tarballs that are older than 5 days

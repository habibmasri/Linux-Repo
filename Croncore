# Linux-Repo
git@github.com:habibmasri/Linux.git
#!/bin/bash
mkdir pac2Logs
echo "#!/bin/bash
/bin/gtar -czvf PAC.cor.`date +"%y%m%d"`.tar.gz core*; rm core*; mv PAC*.gz ./pac2Logs" > PAC.CORE2.sh
chmod +x PAC.CORE2.sh
crontab -l > cronpac
echo "0 0 * * * /data/apps/RMB_1A_FO_BUILD/mx_ox54057_165771/PAC.CORE2.sh" >> cronpac
crontab cronpac
rm cronpac


next steps:
add pwd
force create a dir

0 0 * * * /data/apps/RMB_1A_FO_BUILD/mx_ox54057_165771/PAC.CORE.sh
0 0 * * 5 find  /data/apps/RMB_1A_FO_BUILD/mx_ox54057_165771/pacLogs/PAC*.gz -mtime +7 -exec rm {} \;



#!/bin/bash
crontab -l > cronpac
grep PAC cronpac > cronpactest
if [ -s cronpactest ]; then
echo "Cron job alredy configured"
else mkdir pac2Logs
echo "#!/bin/bash
/bin/gtar -czvf PAC.cor.`date +"%y%m%d"`.tar.gz core*; rm core*; mv PAC*.gz ./pac2Logs" > PAC.CORE2.sh
chmod +x PAC.CORE2.sh
crontab -l > cronpac
echo "0 0 * * * `pwd`/PAC.CORE2.sh" >> cronpac
crontab cronpac
fi
rm cronpac cronpactest

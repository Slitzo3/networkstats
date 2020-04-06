//CONFIG
host_config = "localhost"
port_config = "21"
user_config = ""
passwd_config = ""
//

#myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"

hostname1="$HOSTNAME"

if [$hostname1 = node01}
then
sudo vnstat -h -i ens160 > $hostname1-${now}.txt

elif [$hostname1 = game]
then
sudo vnstat -h -i eth0 > $myip-${now}.txt

fi

now=`date +"%Y-%m-%d-%H-%M-%S"`

#sudo vnstat -h -i ens160 > $myip-${now}.txt

HOST='host_config'
USER='port_config'
PASSWD='passwd_config'
FILE=$myip-${now}.txt

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
put $FILE
quit
END_SCRIPT
exit 0
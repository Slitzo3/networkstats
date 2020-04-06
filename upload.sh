#Config
host_config = "localhost"
port_config = "21"
user_config = ""
passwd_config = ""
#End of config

#myip="$(dig +short myip.opendns.com @resolver1.opendns.com)"

hostname_variable="$HOSTNAME"

sudo vnstat -h -i ens160 > $hostname_variable-${now}.txt

now=`date +"%Y-%m-%d-%H-%M-%S"`

#//HOST='host_config'
#//USER='port_config'
#PASSWD='passwd_config'
#FILE=$myip-${now}.txt

#ftp -n $HOST <<END_SCRIPT
#quote USER $USER
#quote PASS $PASSWD
#binary
#put $FILE
#quit
#END_SCRIPT
#exit 0
#!/usr/bin
if [ $1 ];then
port_dropbear=$1
log=/var/log/secure
loginsukses='Password auth succeeded'
echo ' '
echo ' '

echo " User Login Monitor By Ozik "
echo " 2015 - 2016 @ Fawzya.Net : "
echo "---------------------------------------------------------------"
echo " Date-Time    |    PID   |    User Name    | Dari IP "
echo "---------------------------------------------------------------"
pids=`ps ax |grep dropbear |grep " $port_dropbear" |awk -F" " '{print $1}'`
for pid in $pids
do
pidlogs=`grep $pid $log |grep "$loginsukses" |awk -F" " '{print $3}'`
i=0
for pidend in $pidlogs
do
let i=i+1
done
if [ $pidend ];then
login=`grep $pid $log |grep "$pidend" |grep "$loginsukses"`
PID=$pid
user=`echo $login |awk -F" " '{print $10}' | sed -r "s/'/ /g"`
waktu=`echo $login |awk -F" " '{print $2,$3}'`
while [ ${#waktu} -lt 13 ]
do
waktu=$waktu" "
done

while [ ${#user} -lt 16 ]
do
user=$user" "
done
while [ ${#PID} -lt 8 ]
do
PID=$PID" "
done

fromip=`echo $login |awk -F" " '{print $12}' |awk -F":" '{print $1}'`
echo " $waktu| $PID | $user| $fromip "
fi
done
echo "---------------------------------------------------------------"
echo "             Script di buat oleh Fawzya-AN "
echo "                    www.wormgroup.tk       "
else
echo " Ketik perintah sh login [port]"
echo " contoh : sh login 443"
echo \n
echo \n
fi
exit 0

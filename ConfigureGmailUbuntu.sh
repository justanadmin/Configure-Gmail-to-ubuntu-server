#############################
#
# Remove the '#' if the  update is not done or utilities are not installed
#apt-get update -y
#apt-get install sendmail mailutils -y
#
#
##############################
cd /etc/mail
mkdir -m700 authinfo1
cd authinfo1
touch gmail
echo "AuthInfo: "U:root" "I:YourEmail@gmail.com" "P:Yourpassword"">>gmail
makemap hash gmail < gmail
#this creates gmail.db in the same directory
echo "Enter path of sendmail.mc"
echo "To find the location use this command as root user 'find / -iname sendmail.mc' "
read LocationOfSendmail
cd LocationOfSendmail

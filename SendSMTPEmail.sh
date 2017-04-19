echo -n "Enter Email From Addres:"
read EmailFrom
echo -n "Enter Email To Addres:"
read EMailTo
echo -n "Enter Email Subj:"
read EmailSubj
echo -n "Enter Email Body:"
read EmailBody
echo -n "Do you want to attach document[y/n]:"
question
if [AttachName =="y"]
  echo -n "Enter just Email Attachment Path[ie /root/documents]:"
  read AttachPath
  echo -n "Enter just Email attachment Name[ie malware]:"
  read AttachName
  echo -n "Enter just Email Attachment Type[ie .doc]:"
  read AttachType
  AttachmentEmail
else
  JustEmail
  
AttachmentEmail ()
{
{
sleep 3;
echo 'MAIL FROM:$EmailFrom';
sleep 3;
echo 'RCPT TO:$EMailTo';
sleep 3;
echo 'DATA';
sleep 3;
echo 'SUBJECT: $EmailSubj;
sleep 3;
echo '';
echo '$EmailBody';
echo '';
sleep 3;
echo 'To:$EMailTo'
echo '';
echo 'MIME-Version: 1.0';
echo '';
echo 'Content-Type: text/doc; name="$AttachName.$AttachType"';
echo 'Content-Description: {ATTACH $AttachName.$AttachType}';
echo 'Content-Type: Multipart/mixed';
echo '';
echo 'Content-Disposition: attachment; filename="{ATTACH $AttachName.$AttachType}"';
echo '';
echo 'Content-Transfer-Encoding: base64';
echo '';
sleep 3;
echo '';
cat $AttachPath\$AttachName.$AttachType | base64;
sleep 3;
echo '.';
sleep 3;
echo 'QUIT';
} | telnet {SMTP SERVER} 25
}

JustEmail ()
{
{
sleep 3;
echo 'MAIL FROM:$EmailFrom';
sleep 3;
echo 'RCPT TO:$EMailTo';
sleep 3;
echo 'DATA';
sleep 3;
echo 'SUBJECT: $EmailSubj;
sleep 3;
echo '';
echo '$EmailBody';
echo '';
#sleep 3;
#echo 'To:$EMailTo'
#echo '';
#echo 'MIME-Version: 1.0';
#echo '';
#echo 'Content-Type: text/doc; name="$AttachName"';
#echo 'Content-Description: {ATTACH Name}';
#echo 'Content-Type: Multipart/mixed';
#echo '';
#echo 'Content-Disposition: attachment; filename="{ATTACH Name}"';
#echo '';
#echo 'Content-Transfer-Encoding: base64';
#echo '';
#sleep 3;
#echo '';
#cat {ATTACH File Path} | base64;
sleep 3;
echo '.';
sleep 3;
echo 'QUIT';
} | telnet {SMTP SERVER} 25
}

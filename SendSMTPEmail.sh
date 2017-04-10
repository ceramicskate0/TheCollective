{
sleep 3;
echo 'MAIL FROM:{EMAIL}';
sleep 3;
echo 'RCPT TO:{EMIAL}';
sleep 3;
echo 'DATA';
sleep 3;
echo 'SUBJECT: {SUBJ};
sleep 3;
echo '';
echo '{BODY}';
echo '';
sleep 3;
echo 'To:{EMAIL}'
echo '';
#echo 'MIME-Version: 1.0';
echo '';
#echo 'Content-Type: text/doc; name="{ATTACH Name}"';
#echo 'Content-Description: {ATTACH Name}';
#echo 'Content-Type: Multipart/mixed';
echo '';
#echo 'Content-Disposition: attachment; filename="{ATTACH Name}"';
echo '';
#echo 'Content-Transfer-Encoding: base64';
echo '';
sleep 3;
echo '';
#cat {ATTACH File Path} | base64;
sleep 3;
echo '.';
sleep 3;
echo 'QUIT';
} | telnet {SMTP SERVER} 25

#!/usr/bin/python
import os
{
sleep 3;
echo 'MAIL FROM:{ACCOUNT}';
sleep 3;
echo 'RCPT TO:{ACCOUNT}';
sleep 3;
echo 'DATA';
sleep 3;
echo 'SUBJECT: {SUBJ}';
sleep 3;
echo '';
echo '{BODY}';
echo '';
sleep 3;
echo 'To:{ACCOUNT}'
echo '';
echo 'MIME-Version: 1.0';
echo '';
echo 'Content-Type: text/doc; name="{ATTACHMENT NAME}"';
echo 'Content-Description: {ATTACHMENT NAME};
echo 'Content-Type: Multipart/mixed';
echo '';
echo 'Content-Disposition: attachment; filename="{ATTACHMENT NAME}"';
echo '';
echo 'Content-Transfer-Encoding: base64';
echo '';
sleep 3;
echo '';
cat {ATTACHMENT PATH} | base64;
sleep 3;
echo '.';
sleep 3;
echo 'QUIT';
} | telnet TARGET 25

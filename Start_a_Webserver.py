#!/usr/bin/python
import os

print"___________________________________________________________________"
print"|              SELECT WHAT KIND OF OPTIONS TO RUN:                |"
print"|-----------------------------------------------------------------|"
print"|1. Start Nginx                                                   |"
print"|2. Start Apache                                                  |"
print"|3. Start Python                                                  |"
print"|_________________________________________________________________|"
gateway= raw_input("\nPlease the number of what you want to do:")
		if gateway=="1":
			os.system("service nginx start")
			break
		elif gateway=="2":
			os.system("service apache2 start")
			break
		elif gateway=="3":
		  port=raw_input("What port:)
			os.system("python -m SimpleHTTPServer "+ port)
			break

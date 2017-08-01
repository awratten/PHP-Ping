# Python 3.4

import requests, requests.utils
import re

for num in range(999):
	# num = 251
	try:
		r = requests.get("https://www.absa.net.au/documents/item/" + str(num))

		d = r.headers['content-disposition']
		fname = re.findall("filename=(.+)", d)

		fname = fname[-1]
		fname = fname.replace('"', '')

		with open(fname, 'wb') as f:
			f.write(r.content)
	except:
		print('error' + str(num))


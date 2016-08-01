from os import *
from PIL import Image
d = "D:\\prog\\aspnetsites\\WebSite3\\images\\menu"
nd = "D:\\prog\\aspnetsites\\WebSite3\\images\\menu\\nd"
size = 320, 240
f = []
for (dirpath, dirnames, filenames) in walk(d+"\\"):
	f.extend(filenames)
	break
makedirs(nd+"\\")
for i in f:
	im = Image.open(d+"\\"+i)
	im = im.resize(size,Image.ANTIALIAS)
	im.save(nd+"\\"+i)
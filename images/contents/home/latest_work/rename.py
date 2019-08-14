import os

folderlist = os.listdir()        	#列举文件夹
cnt = 1
prefix = 'img_small'

for fileName in folderlist:
	if  fileName.endswith('.jpg') and  fileName.startswith('image_small'):
		print('Current name:' + fileName)
		newName = prefix + str(cnt) + '.jpg'
		os.rename(fileName,newName)
		print('#' + str(cnt) + ': ' + newName)
		cnt += 1
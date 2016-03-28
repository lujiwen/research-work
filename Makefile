clean-temp:
	rm  ` ls -a |grep ~$$`
clean:clean-temp
	rm ./elsarticle-template/*  && rm ./elsarticle-template.zip
copy:
	mv ../chrome_download/elsarticle-template.zip  ./ &&  unzip -d ./elsarticle-template elsarticle-template.zip

pull:
	git pull 
add: 
	git add -A

commit: add
	git commit -m  "`date`"
push:commit
	git push -u origin master

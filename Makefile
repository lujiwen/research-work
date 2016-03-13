clean-temp:
	rm  ` ls -a |grep ~$$`
clean:clean-temp
	rm ./elsarticle-template/*  && rm ./elsarticle-template.zip
copy:clean
	mv ../chrome_download/elsarticle-template.zip  ./ &&  unzip -d ./elsarticle-template elsarticle-template.zip

add: copy
	git add -A

commit: add
	git commit -m  "`date`"
push:
	git push -u origin master

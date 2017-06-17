all: README.md
%.md: %.txt cat.pl
	perl cat.pl $< > $@
cat.pl:
	curl https://raw.githubusercontent.com/district10/cat/master/bin/cat.pl > $@
gh:	README.md
	git add -A; git commit -m "lazy commit"; git push;
watch: jwatch.jar
	java -jar jwatch.jar -i "publish"
jwatch.jar:
	curl http://whudoc.qiniudn.com/2016/jwatch.jar > jwatch.jar

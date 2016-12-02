all: push

init:
	mkdir -p resources/public && cd resources/public && git init . && git remote add origin git@github.com:benswift/benswift.github.io.git

generate-blog:
	lein run

commit-all: generate-blog
	cd resources/public && git add . && git commit -m "update blog"

push: commit-all
	cd resources/public && git push --force origin master

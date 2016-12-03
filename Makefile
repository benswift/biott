BASE_HTML_DIR=resources/public
GH_USERNAME=benswift

all: push

init:
	mkdir -p $(BASE_HTML_DIR) && cd $(BASE_HTML_DIR) && git init . && git remote add origin git@github.com:$(GH_USERNAME)/$(GH_USERNAME).github.io.git

generate-blog:
	lein run

commit-all: generate-blog
	cd $(BASE_HTML_DIR) && git add . && git commit -m "update blog"

push: commit-all
	cd $(BASE_HTML_DIR) && git push --force origin master

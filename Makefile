init-gh-pages-branch:
	mkdir -p resources/public && cd resources/public && git init . && git checkout --orphan gh-pages && git remote add origin git@github.com:benswift/benswift.github.com.git

commit-all:
	git add . && git commit -m "update blog"

push: commit-all
	git push origin gh-pages

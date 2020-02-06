default: site

site:
	@mkdir -p _site
	@cp index.html _site/index.html
	@sass style.scss style.css
	@mv style.css _site/style.css
	@mv style.css.map _site/style.css.map
	@cp style.scss _site/style.scss
	@cp *.ttf _site/

deploy:
	@rsync -aqz --exclude=.DS_Store -e ssh _site/ website:autumn

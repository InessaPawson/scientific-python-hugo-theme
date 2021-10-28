.PHONY: doc-serve shortcode-docs
.DEFAULT_GOAL := doc-serve

shortcode-docs:
	python tools/render_shortcode_docs.py > doc/content/shortcodes.md

doc-serve: shortcode-docs
	(cd doc && hugo serve --themesDir="../..")
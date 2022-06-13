output_dir = ./build
output_css = $(output_dir)/subpublic.css
src_dir = ./src
src_css = $(src_dir)/styles/input.css
src_css_conf = $(src_dir)/tailwindcss.config.js

build:
	zola --root $(src_dir) build --output-dir $(output_dir)
	./tailwindcss --config $(src_css_conf) --input $(src_css) --output $(output_css) --minify

html:
	zola --root $(src_dir) serve --output-dir $(output_dir)

css:
	npx tailwindcss --config $(src_css_conf) --input $(src_css) --output $(output_css) --watch

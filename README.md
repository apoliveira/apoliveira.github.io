# apoliveira.github.io

This is the repo for my personal/academic website.

It's based on a Hyde theme with some minor tweaks.

## Generating CV

1. Include the appropriate .tex template and data in `_data/`.
2. Run `node prepyaml` to format the YAML correctly.
3. Run `pandoc -o cv.pdf -s --template=template.tex data.yml`

## Requirements

- npm
  - js-yaml

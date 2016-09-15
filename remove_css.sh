#!/bin/sh
# chmod a+x remove_css_extension.sh
for file in $(find ./app/assets/stylesheets/ -name "*.css.sass")
do
    git mv $file `echo $file | sed s/\.css//`
done

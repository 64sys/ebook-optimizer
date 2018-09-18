#!/bin/bash

# Script para crear un EPUB

$1

cd $1
zip -0Xq ../book.epub mimetype
zip -Xr9Dq ../book.epub * -x mimetype -x book.zip
#cp ../book.zip ../book.epub


#!/bin/bash
for x in *.adoc; do
  echo "found $x"
  asciidoctor "$x"
done

for x in *.html; do
  t="html/$x"
  mv $x $t && echo "moved $x -> $t"
done

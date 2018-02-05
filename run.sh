#!bin/bash
cd ${DATA}
for i in *.Rmd; do
    [ -f "$i" ] || break
    Rscript -e "library(knitr); knit('$i')"
done

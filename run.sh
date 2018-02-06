#!bin/bash
cd ${DATA}
pwd
ls -l
for i in *.Rmd; do
    [ -f "$i" ] || break
    Rscript -e "library(knitr); knit('$i')"
done

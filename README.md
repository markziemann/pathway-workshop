# Pathway Workshop

Learning materials for pathway analysis workshop in May 2026 presented by Anusuiya Bora and Mark Ziemann.

## How to run this code

At the bash command line, clone the git repo. 

```
git clone https://github.com/markziemann/pathway-workshop.git
```

You will need to install the following CRAN libraries:

```
install.packages(c("kableExtra","parallel","RhpcBLASctl","eulerr","rmdformats","png"))'
```

And these ones from Bioconductor:

```
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install(c("getDEE2","DESeq2","fgsea"))
```

Then execute the Rmarkdown scripts

```
Rscript -e 'rmarkdown::render("dataprep.Rmd")'
Rscript -e 'rmarkdown::render("session2.Rmd")'
``

## Inspect results

Use your favourite web browser.

```
firefox session2.html
```




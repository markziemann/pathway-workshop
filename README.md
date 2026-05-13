# Pathway Workshop

Learning materials for pathway analysis workshop in May 2026 presented by Anusuiya Bora and Mark Ziemann.

## How to run this code

At the bash command line, clone the git repo. 

```
git clone https://github.com/markziemann/pathway-workshop.git
```

You will need to install the following CRAN libraries:

```
install.packages(c("kableExtra","parallel","RhpcBLASctl","eulerr","rmdformats","png"))
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
```

## Inspect results

Use your favourite web browser.

```
firefox session2.html
```

## Best practices

Reproducibility is a hot topic in bioinformatics right now.
If you run this script with different versions of R you will find
that you get subtly different results.
This problem can be eliminated with different approaches, but the
one we recommend is Docker.
Read the `docker_guide.md` for how to create a docker image for your
project.
The idea is that each of your projects will have a separate Docker image,
which encapsulates all dependencies and can be archived along with the other
project data so that it can be reproducible many years into the future.

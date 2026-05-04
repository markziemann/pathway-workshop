# Docker inheritance

# this is a ubuntu image with R, Rstudio and bioC
FROM bioconductor/bioconductor_docker:3.21-R-4.5.1

# Update apt-get and get useful utilities
RUN apt-get update \
  && apt-get install -y nano git python3-magic-wormhole \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Install required CRAN packages
RUN R -e 'install.packages(c("kableExtra","parallel","RhpcBLASctl","eulerr","rmdformats","png"))'

# Install required Bioconductor package
RUN R -e 'BiocManager::install(c("getDEE2","DESeq2","fgsea"))'

# Clone the repository that contains the research code and execute it
RUN git clone https://github.com/markziemann/pathway-workshop.git

# Set the container working directory
ENV DIRPATH /pathway-workshop
WORKDIR $DIRPATH

# Copy the REACTOME DB fromlocal disk to the container
COPY ref $DIRPATH

# change folder permissions so user can work freely
RUN chmod -R 777 $DIRPATH

ENTRYPOINT /bin/bash

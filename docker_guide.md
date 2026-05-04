# Set up your own docker image

See the Dockerfile in this repo - customise it to your needs, especially the
libraries required.

Then build the image.

```
docker build -t mziemann/pathway-workshop .
```

Run the image in a container.

```
docker run -it mziemann/pathway-workshop bash
```

When you do this, it will give you a new prompt inside the project repo.
You should see the repo contents when you run `ls`.

To make sure you get the most up to date copy of the code, run `git pull`.

If you can see the RMarkdown scripts then you can run them.

```
Rscript -e 'rmarkdown::render("dataprep.Rmd")'
Rscript -e 'rmarkdown::render("session2.Rmd")'
```

They should complete successfully, at which time you can exit from the container
using `exit`.

Then `docker ps` can be used to get the ID of the container with the results.

Then `docker cp` can be used to copy the results to the host machine.



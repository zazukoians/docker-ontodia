# Ontodia Docker Image

This is a minimal image for [Ontodia](http://ontodia.org/), a platform for exploration and visualization of graph-based data. It allows you to run an Ontodia instance in Docker.

## Building & Running

To build the image checkout the repository on your host and

1. Build the docker image

    `docker build -t ontodia .`

1. Once it is built, run it like this

    `docker run --rm --env SPARQL_ENDPOINT=https://example.com/query -p 8080:80 ontodia`

The variable `SPARQL_ENDPOINT` should point to an accessible SPARQL endpoint Ontodia will use. By default it points to `http://ld.zazuko.com/query`.


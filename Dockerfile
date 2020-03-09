FROM nginx:1-alpine

WORKDIR /usr/share/nginx/html
RUN mkdir -p ./dist
RUN wget https://unpkg.com/ontodia@0.12.0/dist/ontodia-full.min.js -O ./dist/ontodia-full.min.js
COPY ./entrypoint.sh /
COPY index.html .

ENV SPARQL_ENDPOINT http://ld.zazuko.com/query

CMD "/entrypoint.sh"
EXPOSE 80

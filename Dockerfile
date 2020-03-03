FROM nginx:1-alpine

COPY ./entrypoint.sh /
COPY index.html /usr/share/nginx/html/
COPY ./node_modules/ontodia/dist /usr/share/nginx/html/dist

ENV SPARQL_ENDPOINT http://ld.zazuko.com/query

CMD "/entrypoint.sh"
EXPOSE 80

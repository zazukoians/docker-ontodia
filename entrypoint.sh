#!/usr/bin/env sh
sed -i 's@SPARQL_ENDPOINT@'"$SPARQL_ENDPOINT"'@' /usr/share/nginx/html/index.html
exec nginx -g 'daemon off;'

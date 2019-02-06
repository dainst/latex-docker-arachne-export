#!/usr/bin/env bash
rm files/*
curl -X GET \
  'http://localhost:8080/data/catalog/782?mediaType=tex' \
  -H 'Authorization: Basic cC5mcmFuY2s6MzliNGI3N2EwYzgxZGU2YTAwYTkwNzdlN2UyMzg0MTY=' \
  -H 'Cache-Control: no-cache' \
  -o files/export.tex
docker-compose up

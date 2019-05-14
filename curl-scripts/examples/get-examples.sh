#!/bin/bash

curl "https://sei-books-auth.herokuapp.com/examples" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo

# Authenticated Books
This repo is similar to the books we saw before, but now they are authenticated.

The authenticated books url is:
[https://sei-books-auth.herokuapp.com](https://sei-books-auth.herokuapp.com)

## CRUD Actions

| verb   | path | parameters |
| ------ | ---- | ---------- |
| POST | `/books` | `book` containing `title` and `author` (requires Authorization header) |
| GET | `/books` | None (requires Authorization header) |
| GET | `/books/:id` | None (requires Authorization header) |
| PATCH | `/books/:id` | `book` containing `title` and `author` (requires Authorization header) |
| DELETE | `/books/:id` | None (requires Authorization header) |

## Auth Curl Scripts
### sign up
```sh
#!/bin/bash

curl "https://sei-books-auth.herokuapp.com/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
```

### sign in
```sh
#!/bin/bash

curl "https://sei-books-auth.herokuapp.com/sign-in" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
```

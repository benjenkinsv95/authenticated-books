# Authenticated Books
| verb   | path | parameters |
| ------ | ---- | ---------- |
| POST | `/books` | `book` containing `title` and `author` (requires Authorization header) |
| GET | `/books` | None (requires Authorization header) |
| GET | `/books/:id` | None (requires Authorization header) |
| PATCH | `/books/:id` | `book` containing `title` and `author` (requires Authorization header) |
| DELETE | `/books/:id` | None (requires Authorization header) |

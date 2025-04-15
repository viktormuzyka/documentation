# Документація для користувача

Цей розділ описує доступні операції для користувачів у системі.

## Реєстрація користувача

Щоб зареєструвати нового користувача, потрібно надіслати запит на сервер для створення акаунта.

**POST** `/api/users/register`

### Параметри запиту:
- `email` (required) – електронна пошта користувача.
- `password` (required) – пароль користувача.
- `name` (required) – ім'я користувача.

#### Приклад запиту:

```bash
curl -X POST http://localhost:8000/api/users/register \
  -H "Content-Type: application/json" \
  -d '{"email": "user@example.com", "password": "securePassword123", "name": "John Doe"}'

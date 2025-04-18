# API Документація

Цей розділ містить детальну інформацію про доступні API, які можна використовувати для взаємодії з вашим додатком. 

---

## Авторизація

Для доступу до API необхідно використовувати **JWT токени** для автентифікації користувача. Токени можна отримати після успішної авторизації через систему входу.

### Отримання JWT токена

**POST** `/api/auth/login`

Запит для отримання токена користувача. Потрібно вказати імейл і пароль користувача.

#### Приклад запиту:

```bash
curl -X POST http://localhost:8000/api/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email": "user@example.com", "password": "your_password"}'

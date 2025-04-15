
---

### 3. `docs/reference/permissions.md` — Документація для об'єкта з доступами

```markdown
# Документація для об'єкта доступів

Цей розділ описує об'єкти доступів і їх управління.

## Створення ролі

**POST** `/api/permissions/roles`

Цей запит дозволяє створити нову роль для користувача.

### Параметри запиту:
- `role_name` (required) – назва ролі (наприклад, "admin", "user").
- `permissions` (required) – список дозволених операцій для цієї ролі.

#### Приклад запиту:

```bash
curl -X POST http://localhost:8000/api/permissions/roles \
  -H "Authorization: Bearer your_jwt_token" \
  -H "Content-Type: application/json" \
  -d '{"role_name": "admin", "permissions": ["create", "delete", "update", "view"]}'

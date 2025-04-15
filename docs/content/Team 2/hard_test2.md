
---

### 2. `docs/reference/order.md` — Документація для замовлення

```markdown
# Документація для замовлення

Цей розділ описує операції для створення та управління замовленнями.

## Створення замовлення

**POST** `/api/orders`

Цей запит дозволяє користувачеві створити нове замовлення на бустінг акаунта.

### Параметри запиту:
- `boost_id` (required) – ID бусту, який користувач хоче придбати.
- `user_id` (required) – ID користувача.
- `rank_from` (required) – поточний ранг користувача.
- `rank_to` (required) – бажаний ранг після бусту.

#### Приклад запиту:

```bash
curl -X POST http://localhost:8000/api/orders \
  -H "Authorization: Bearer your_jwt_token" \
  -H "Content-Type: application/json" \
  -d '{"boost_id": 1, "user_id": 123, "rank_from": "Silver 1", "rank_to": "Gold Nova 1"}'

# Firestore Structure

## Collections
- `users/{uid}` profile, addresses, preferences.
- `stores/{storeId}` store metadata and categories.
- `products/{productId}` product catalog linked with `storeId`.
- `offers/{offerId}` promotional offers.
- `carts/{uid}` active cart with nested `items` array.
- `orders/{orderId}` order, status, ETA, address snapshot.

## Naming & IDs
- Use lowercase snake_case collection names.
- Use Firebase auto IDs for most collections.
- Use user UID as document ID where user-bound (`users`, `carts`).

## Indexes
- Composite index: `products` on `storeId + category + price`.
- Composite index: `orders` on `userId + createdAt(desc)`.
- Composite index: `offers` on `expiryDate + isActive`.

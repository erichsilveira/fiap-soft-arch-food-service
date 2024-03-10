INSERT INTO customers (id, cpf, name, email, created_at, updated_at) VALUES ('174a948d-e049-4e70-a882-0045e536d8b7', '63046797001', 'Maria', 'maria@techchallenge.com', current_timestamp, current_timestamp);

INSERT INTO product_categories (id, name, description, created_at, updated_at) VALUES ('771eeb81-0135-4eea-8b71-aa69a28c0b4f', 'Lanches', 'Categoria de Lanches', current_timestamp, current_timestamp);

INSERT INTO additional_items (id, name, description, price, product_category_id, created_at, updated_at) VALUES ('208026e0-7bcd-4958-a9d2-e4bd5c375ecb', 'Bacon', 'Bacon', 1.90, '771eeb81-0135-4eea-8b71-aa69a28c0b4f', current_timestamp, current_timestamp);

INSERT INTO products (id, name, description, price, product_category_id, created_at, updated_at) VALUES ('9bb4ffaa-45db-4a2a-b704-3e51b9707583', 'X-Salada', 'Lanche com salada', 15.00, '771eeb81-0135-4eea-8b71-aa69a28c0b4f', current_timestamp, current_timestamp);

INSERT INTO orders (id, order_price, status, customer_id, customer_cpf, created_at, updated_at) VALUES ('553eeb81-0135-4eea-8b71-aa69a28c0b5b', 15.00, 0, '174a948d-e049-4e70-a882-0045e536d8b7', '63046797001', current_timestamp, current_timestamp);
INSERT INTO order_products (id, order_id, product_id, created_at, updated_at) VALUES ('374ee91d-da55-438b-926c-8374d4097e3d', '553eeb81-0135-4eea-8b71-aa69a28c0b5b', '9bb4ffaa-45db-4a2a-b704-3e51b9707583', current_timestamp, current_timestamp);

INSERT INTO payments (id, order_id, order_price, status, created_at, updated_at) VALUES ('553eeb81-0135-4eea-8b71-aa69a28c0b5b', '553eeb81-0135-4eea-8b71-aa69a28c0b5b', 15.00, 'REJECTED', '2024-01-17T02:44:10.868895Z', '2024-01-17T02:44:10.868895Z');
INSERT INTO sellers (name, email, password, phone_number, verified)
VALUES 
('Alice Bakery', 'alice@homeeats.com', 'password123', '91234567', TRUE),
('Bob Drinks', 'bob@homeeats.com', 'password123', '92345678', FALSE);

INSERT INTO stores (seller_id, name, description, address, delivery_option, region)
VALUES
(1, 'Alice Cookies', 'Homemade cookies and pastries', '123 Cookie Lane', 'both', 'Central'),
(2, 'Bob Smoothies', 'Fresh fruit smoothies', '45 Blend Ave', 'delivery', 'East');

INSERT INTO products (store_id, name, description, price, available, image_url)
VALUES
(1, 'Chocolate Chip Cookies', 'Crispy and chewy', 5.50, TRUE, 'https://picsum.photos/id/101/300/200'),
(1, 'Butter Croissant', 'Flaky buttery pastry', 3.20, TRUE, 'https://picsum.photos/id/102/300/200'),
(2, 'Mango Smoothie', 'Fresh mango blended with milk', 4.80, TRUE, 'https://picsum.photos/id/103/300/200');

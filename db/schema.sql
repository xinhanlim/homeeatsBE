CREATE TABLE buyers (
  buyer_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(255),
  address TEXT,
  phone_number VARCHAR(20)
);

CREATE TABLE sellers (
  seller_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  password VARCHAR(255),
  phone_number VARCHAR(20),
  verified BOOLEAN DEFAULT FALSE
);

CREATE TABLE stores (
  store_id INT AUTO_INCREMENT PRIMARY KEY,
  seller_id INT,
  name VARCHAR(100),
  description TEXT,
  address TEXT,
  delivery_option ENUM('pickup','delivery','both'),
  region VARCHAR(100),
  FOREIGN KEY (seller_id) REFERENCES sellers(seller_id)
);

CREATE TABLE products (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  store_id INT,
  name VARCHAR(100),
  description TEXT,
  price DECIMAL(10,2),
  available BOOLEAN DEFAULT TRUE,
  FOREIGN KEY (store_id) REFERENCES stores(store_id)
);

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  buyer_id INT,
  store_id INT,
  order_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status ENUM('pending','preparing','delivered') DEFAULT 'pending',
  payment_method ENUM('cash','paynow'),
  total_price DECIMAL(10,2),
  FOREIGN KEY (buyer_id) REFERENCES buyers(buyer_id),
  FOREIGN KEY (store_id) REFERENCES stores(store_id)
);


-- users nomli jadval (tablitsa) hosil qiling. users jadvalida user_id, full_name, age, email, phone, address kabi ustunlari bo’lsin.

-- jadvalga kamida 4 ta user qo’shing.

-- ALTER TABLE buyug’i orqli jadvaldan address ustunini olib tashlang.
DROP TABLE IF EXISTS users; 
CREATE TABLE IF NOT EXISTS users(
	user_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	full_name VARCHAR(20),
	age INTEGER,
	email VARCHAR(50),
	phone INTEGER,
	address TEXT
);
SELECT * FROM users;

INSERT INTO users (full_name, age, email, phone, address) VALUES
('John Doe', 30, 'john@example.com', '123456789', '123 Main St'),
('Jane Smith', 25, 'jane@example.com', '987654321', '456 Elm St'),
('Alice Johnson', 35, 'alice@example.com', '555111222', '789 Oak St'),
('Bob Brown', 40, 'bob@example.com', '777888999', '101 Pine St');

SELECT * FROM users;

ALTER TABLE users DROP COLUMN address;



SELECT * FROM users;
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
('Jumaboy Nematov', 30, 'jumaboy@example.com', '123456789', 'Fargona'),
('Iqbol Muxtorov', 25, 'iqbol@example.com', '987654321', 'Andijon'),
('Ali Aliyev', 35, 'ali@example.com', '555111222', 'qoqon'),
('Bobur Boburov', 40, 'bobur@example.com', '777888999', 'Namangan');

SELECT * FROM users;

ALTER TABLE users DROP COLUMN address;

SELECT * FROM users;
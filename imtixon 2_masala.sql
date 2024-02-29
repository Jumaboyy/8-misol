drop table if exists models;
drop table if exists brands;

CREATE TABLE IF NOT EXISTS brands(
	brand_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	brand_name VARCHAR(20)
);
SELECT * FROM brands;

CREATE TABLE IF NOT EXISTS models(
	model_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	model_name VARCHAR(20),
	model_price INTEGER,
	model_count INTEGER,
	brand_id INTEGER REFERENCES brands(brand_id)
);
SELECT * FROM models;

INSERT INTO brands(brand_name) VALUES
('Apple'),
('Samsung'),
('Nokia');
SELECT * FROM brands;

INSERT INTO models(model_name,model_price,model_count,brand_id) VALUES
('A10','100','2',2),
('A50','300','5',2),
('IPHONE 11','400','5',1),
('NIKIA 11','50','10',3);
SELECT * FROM models;

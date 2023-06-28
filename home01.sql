-- 1. Создайте таблицу с мобильными телефонами. 
CREATE TABLE mobile_phones (
  id_mobile_phones int NOT NULL AUTO_INCREMENT,
  models_mobile_phones varchar(45) NOT NULL,
  manufacturers_mobile_phones varchar(45) NOT NULL,
  prices_mobile_phones decimal(10,0) DEFAULT NULL,
  quantity_mobile_phones int NOT NULL,
  PRIMARY KEY (id_mobile_phones)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Заполните БД данными
INSERT INTO mobile_phones (models_mobile_phones, manufacturers_mobile_phones, prices_mobile_phones, quantity_mobile_phones) VALUES ('Huawei MATE50 Pro', 'Huawei', 65000, 7);
INSERT INTO mobile_phones (models_mobile_phones, manufacturers_mobile_phones, prices_mobile_phones, quantity_mobile_phones) VALUES ('iPhone 14 Pro Max 512 GB', 'Apple', 180000, 1);
INSERT INTO mobile_phones (models_mobile_phones, manufacturers_mobile_phones, prices_mobile_phones, quantity_mobile_phones) VALUES ('S23 8/512 GB', 'Samsung', 80000, 12);



-- 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
SELECT models_mobile_phones, manufacturers_mobile_phones, prices_mobile_phones 
FROM mobile_phones
WHERE quantity_mobile_phones > 2;

-- 3. Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM mobile_phones
WHERE manufacturers_mobile_phones = 'Samsung';

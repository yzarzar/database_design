-- use my_db;

-- CREATE TABLE country (
--     country_id INT PRIMARY KEY AUTO_INCREMENT,
--     country_name VARCHAR(100) NOT NULL
-- );
-- CREATE TABLE user (
--     user_id INT PRIMARY KEY AUTO_INCREMENT,
--     user_name VARCHAR(100) NOT NULL,
--     email VARCHAR(100),
--     country_fk_id INT,
--     FOREIGN KEY (country_fk_id) REFERENCES country(country_id)
-- );

-- INNER JOIN

-- SELECT user.user_id, user.user_name, user.email, country.country_name
-- FROM user
-- INNER JOIN country ON user.country_fk_id = country.country_id;


-- INNER JOIN

-- SELECT user.user_name
-- FROM user
-- INNER JOIN country ON user.country_fk_id = country.country_id
-- WHERE country.country_name = 'Canada';

-- SELECT user.user_name
-- FROM user
-- INNER JOIN country ON user.country_fk_id = country.country_id
-- WHERE country.country_name = 'Canada';


-- RIGHT JOIN

-- SELECT user.user_name, country.country_name
-- FROM user
-- RIGHT JOIN country ON user.country_fk_id = country.country_id;

-- LEFT JOIN

-- SELECT user.user_name, country.country_name
-- FROM user
-- LEFT JOIN country ON user.country_fk_id = country.country_id;


-- MAKE RELATIONSHIP BETWEEN country AND city

-- CREATE TABLE `city` (
--   `city_id` int NOT NULL AUTO_INCREMENT,
--   `city_name` varchar(100) NOT NULL,
--   `country_fk_id` int NOT NULL,
--   PRIMARY KEY (`city_id`),
--   FOREIGN KEY (`country_fk_id`) REFERENCES `country`(`country_id`)
-- );

-- INSERT DATA TO CITY

-- INSERT INTO city (city_name, country_fk_id) VALUES
-- ('New York', 1),
-- ('Los Angeles', 1),
-- ('Toronto', 2),
-- ('Vancouver', 2),
-- ('Tokyo', 3),
-- ('Osaka', 3);

-- INNER JOIN

-- SELECT country.country_name, city.city_name, user.user_name
-- FROM country
-- INNER JOIN city ON country.country_id = city.country_fk_id
-- INNER JOIN user ON country.country_id = user.country_fk_id;

-- MODIFY TABLE user COLUMN user_name VARCHAR(100) TO VARCHAR(225)
-- ALTER TABLE `user`
-- MODIFY `user_name` varchar(225) NOT NULL;

-- LEFT JOIN

-- SELECT city.city_id 
-- FROM country 
-- LEFT JOIN city ON country.country_id = city.country_fk_id;

-- RIGHT JOIN SELECT USER'S CITY NAME
-- SELECT user.user_name, city.city_name
-- FROM city
-- RIGHT JOIN user ON city.country_fk_id = user.country_fk_id;

-- MODIFY COLUMN NAME

-- ALTER TABLE user
-- CHANGE COLUMN user_name full_name VARCHAR(225) NOT NULL;

-- SEARCH DATA

-- SELECT * FROM country WHERE country.country_name = 'Canada';
-- SELECT * FROM country WHERE country.country_name <> 'Canada';
-- SELECT * FROM country WHERE country.country_name != 'Canada';
-- SELECT * FROM country WHERE country.country_name LIKE 'C%';
-- SELECT * FROM country WHERE country.country_name LIKE 'C%a';
-- SELECT * FROM country WHERE country.country_name LIKE 'U%';
-- SELECT * FROM country WHERE country.country_name LIKE 'J%';
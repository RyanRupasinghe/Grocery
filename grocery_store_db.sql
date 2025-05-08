USE grocery_store_db;
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL
);
INSERT INTO products (name, price, quantity) VALUES
('Eggs', 5.99, 40),
('Bread', 3.49, 25),
('Cheese', 7.99, 15),
('Chicken', 12.99, 10),
('Orange Juice', 6.99, 30);

INSERT INTO products (name, price, quantity) VALUES
('Yogurt', 2.79, 35),
('Butter', 4.59, 20),
('Carrots', 2.49, 45),
('Lettuce', 3.99, 30),
('Bell Peppers', 4.29, 25),
('Ground Beef', 9.99, 15),
('Salmon', 15.99, 12),
('Coffee', 8.49, 40),
('Tea Bags', 5.99, 50),
('Cereal', 4.99, 35);

INSERT INTO products (name, price, quantity) VALUES
('Strawberries', 5.99, 25),
('Blueberries', 6.49, 20),
('Raspberries', 7.99, 18),
('Blackberries', 6.79, 22),
('Pineapple', 3.99, 15),
('Watermelon', 9.49, 10),
('Mango', 4.29, 20),
('Peaches', 3.89, 25),
('Grapes', 4.99, 30),
('Avocados', 2.99, 40),
('Broccoli', 2.79, 35),
('Cauliflower', 3.49, 30),
('Spinach', 3.99, 25),
('Kale', 3.69, 20),
('Cucumber', 1.79, 50),
('Zucchini', 2.29, 40),
('Garlic', 0.99, 60),
('Ginger', 2.49, 30),
('Mushrooms', 4.99, 25),
('Sweet Potatoes', 3.29, 35),
('Cabbage', 2.59, 40),
('Lemons', 1.49, 50),
('Limes', 1.29, 55),
('Coconut Water', 4.99, 30),
('Almond Milk', 5.49, 25),
('Soy Milk', 4.99, 20),
('Oat Milk', 5.79, 15),
('Greek Yogurt', 6.99, 22),
('Cottage Cheese', 3.99, 30),
('Whipped Cream', 3.29, 25),
('Bagels', 4.49, 20),
('Croissants', 5.99, 15),
('Sourdough Bread', 3.99, 30),
('Tortillas', 3.79, 25),
('Maple Syrup', 7.99, 18),
('Honey', 6.49, 22),
('Peanut Butter', 4.99, 35),
('Almond Butter', 5.99, 20),
('Jam', 3.79, 40),
('Nutella', 6.99, 15),
('Ketchup', 3.49, 30),
('Mustard', 2.99, 35),
('Mayonnaise', 4.59, 28),
('Hot Sauce', 3.79, 33),
('Soy Sauce', 3.99, 25),
('Olive Oil', 8.99, 20),
('Canola Oil', 6.99, 22),
('Butter', 5.49, 18),
('Cheddar Cheese', 7.99, 25),
('Mozzarella Cheese', 6.99, 28),
('Parmesan Cheese', 9.49, 15),
('Provolone Cheese', 7.79, 18),
('Salami', 8.99, 15),
('Turkey Breast', 9.99, 20),
('Ham', 7.49, 25),
('Bacon', 10.99, 20),
('Ground Turkey', 6.99, 25),
('Pork Chops', 9.99, 18),
('Beef Steak', 12.99, 15),
('Lamb', 14.99, 12),
('Shrimp', 16.99, 18),
('Crab Meat', 19.99, 10),
('Tilapia', 11.99, 20),
('Salmon Fillets', 17.99, 12),
('Canned Tuna', 3.99, 35),
('Frozen Pizza', 7.49, 25),
('Frozen Vegetables', 4.99, 40),
('Frozen Chicken Nuggets', 6.99, 22),
('Frozen Fries', 5.99, 30),
('Protein Bars', 2.99, 50),
('Granola', 5.49, 25),
('Trail Mix', 6.99, 20),
('Almonds', 7.99, 18),
('Walnuts', 8.99, 15),
('Cashews', 9.99, 20),
('Popcorn', 3.99, 30),
('Potato Chips', 4.49, 25),
('Soda', 2.99, 50),
('Bottled Water', 1.99, 75),
('Energy Drinks', 3.79, 30);

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE products ADD COLUMN category VARCHAR(50);

UPDATE products SET category = 'Fruit' WHERE name IN ('Strawberries', 'Blueberries', 'Raspberries', 'Blackberries', 'Pineapple', 'Watermelon', 'Mango', 'Peaches', 'Grapes', 'Avocados', 'Lemons', 'Limes');
UPDATE products SET category = 'Vegetable' WHERE name IN ('Broccoli', 'Cauliflower', 'Spinach', 'Kale', 'Carrots', 'Lettuce', 'Bell Peppers', 'Sweet Potatoes', 'Cabbage', 'Zucchini', 'Garlic', 'Ginger', 'Mushrooms', 'Tomatoes', 'Potatoes', 'Onions');

UPDATE products SET category = 'Dairy' WHERE name IN ('Milk', 'Almond Milk', 'Soy Milk', 'Oat Milk', 'Greek Yogurt', 'Cottage Cheese', 'Cheddar Cheese', 'Mozzarella Cheese', 'Parmesan Cheese', 'Provolone Cheese', 'Butter', 'Whipped Cream');
UPDATE products SET category = 'Eggs' WHERE name = 'Eggs';

UPDATE products SET category = 'Bakery' WHERE name IN ('Bagels', 'Croissants', 'Sourdough Bread', 'Tortillas');

UPDATE products SET category = 'Spices & Condiments' WHERE name IN ('Ketchup', 'Mustard', 'Mayonnaise', 'Hot Sauce', 'Soy Sauce', 'Olive Oil', 'Canola Oil', 'Maple Syrup', 'Honey', 'Peanut Butter', 'Almond Butter', 'Jam', 'Nutella');
UPDATE products SET category = 'Breakfast' WHERE name IN ('Cereal', 'Granola', 'Trail Mix', 'Protein Bars');
UPDATE products SET category = 'Nuts & Snacks' WHERE name IN ('Almonds', 'Walnuts', 'Cashews', 'Popcorn', 'Potato Chips');
UPDATE products SET category = 'Staples' WHERE name IN ('Rice', 'Pasta');

UPDATE products SET category = 'Meat' WHERE name IN ('Ground Beef', 'Pork Chops', 'Beef Steak', 'Lamb', 'Salami', 'Turkey Breast', 'Ham', 'Bacon', 'Ground Turkey');
UPDATE products SET category = 'Seafood' WHERE name IN ('Salmon Fillets', 'Shrimp', 'Crab Meat', 'Tilapia', 'Canned Tuna');
UPDATE products SET category = 'Frozen Food' WHERE name IN ('Frozen Pizza', 'Frozen Vegetables', 'Frozen Chicken Nuggets', 'Frozen Fries');
UPDATE products SET category = 'Drinks' WHERE name IN ('Coffee', 'Tea Bags', 'Bottled Water', 'Coconut Water', 'Soda', 'Energy Drinks');
UPDATE products SET category = 'Dairy' WHERE name IN ('Cheese', 'Yogurt');
UPDATE products SET category = 'Meat' WHERE name = 'Chicken';
UPDATE products SET category = 'Bakery' WHERE name = 'Bread';
UPDATE products SET category = 'Seafood' WHERE name = 'Salmon';
UPDATE products SET category = 'Drinks' WHERE name = 'Orange Juice';
UPDATE products SET category = 'Vegetable' WHERE name = 'Cucumber';
UPDATE products SET category = 'Fruit' WHERE id IN (
    SELECT id FROM products WHERE name IN ('Strawberries', 'Blueberries', 'Raspberries', 'Blackberries', 'Pineapple', 'Watermelon', 'Mango', 'Peaches', 'Grapes', 'Avocados', 'Lemons', 'Limes')
);
SET SQL_SAFE_UPDATES = 1;

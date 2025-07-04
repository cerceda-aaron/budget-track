-- Create and use database
CREATE DATABASE IF NOT EXISTS budget_track;
USE budget_track;

-- Create tables
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type ENUM('expenses', 'income') NOT NULL
);

CREATE TABLE payment_methods (
    id INT AUTO_INCREMENT PRIMARY KEY,
    method VARCHAR(50) NOT NULL
);

CREATE TABLE transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type ENUM('expense', 'income') NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    category_id INT,
    payment_id INT,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    FOREIGN KEY (payment_id) REFERENCES payment_methods(id)
);

-- Default data (can be eliminated later)

INSERT INTO categories (name, type) VALUES 
('Restaurants', 'expenses'),
('Groceries', 'expenses'),
('Transportation', 'expenses'),
('Entertainment', 'expenses'),
('Utilities', 'expenses'),
('Salary', 'income'),
('Freelance', 'income'),
('Investments', 'income');

INSERT INTO payment_methods (method) VALUES 
('Cash'),
('Credit Card'),
('Debit Card'),
('Bank Transfer'),
('Mobile Payment');


INSERT INTO transactions (type, amount, category_id, payment_id, description, created_at) VALUES
('expense', 45.50, 1, 3, 'Dinner at Tacos El Güero', '2025-07-01'),
('expense', 120.00, 2, 2, 'Weekly groceries at Walmart', '2025-07-02'),
('income', 5000.00, 6, 4, 'Monthly salary', '2025-07-03'),
('expense', 15.00, 3, 1, 'Bus fare', '2025-07-04'),
('expense', 60.00, 4, 2, 'Movie night', '2025-07-05'),
('income', 800.00, 7, 4, 'Freelance project', '2025-07-06'),
('expense', 200.00, 5, 3, 'Electricity bill', '2025-07-07'),
('expense', 35.00, 1, 1, 'Lunch at Subway', '2025-07-08'),
('income', 150.00, 8, 4, 'Stock dividends', '2025-07-09'),
('expense', 90.00, 2, 2, 'Groceries at Costco', '2025-07-10'),
('expense', 25.00, 3, 5, 'Uber ride', '2025-07-11'),
('expense', 70.00, 4, 2, 'Concert ticket', '2025-07-12'),
('income', 500.00, 7, 4, 'Logo design gig', '2025-07-13'),
('expense', 110.00, 5, 3, 'Water and gas bill', '2025-07-14'),
('expense', 50.00, 1, 1, 'Dinner at La Casa de Toño', '2025-07-15'),
('income', 5200.00, 6, 4, 'Monthly salary', '2025-07-16'),
('expense', 18.00, 3, 1, 'Taxi to work', '2025-07-17'),
('expense', 40.00, 2, 2, 'Groceries at local market', '2025-07-18'),
('income', 300.00, 8, 4, 'Crypto gains', '2025-07-19'),
('expense', 22.00, 4, 5, 'Netflix subscription', '2025-07-20');


create DATABASE Finance_tracker;

CREATE table user(
user_id int,
User_name varchar(20),
email varchar(25),
phone_no int
);


CREATE TABLE Income(
user_id int,
food_business int,
cloth_business int,
milk_business int,
total_income int
);

create table Expenses(
user_id int,
electricity int,
food int,
rent int,
medication int,
Gym int
);

ALTER TABLE user
MODIFY COLUMN phone_no VARCHAR(15);

ALTER TABLE user
MODIFY COLUMN email VARCHAR(50);



INSERT INTO user(user_id,User_name,email,phone_no) VALUES
(1, 'Aarav Sharma', 'aarav.sharma@example.com', 9876543210),
(2, 'Priya Mehta', 'priya.mehta@example.com', 9123456789),
(3, 'Raj Patel', 'raj.patel@example.com', 9988776655),
(4, 'Sneha Kapoor', 'sneha.kapoor@example.com', 9012345678),
(5, 'Mohit Verma', 'mohit.verma@example.com', 9090909090),
(6, 'Tanvi Agarwal', 'tanvi.agarwal@example.com', 8901234567),
(7, 'Karan Malhotra', 'karan.malhotra@example.com', 9870012345),
(8, 'Neha Singh', 'neha.singh@example.com', 9654321098),
(9, 'Vikram Joshi', 'vikram.joshi@example.com', 9532147890),
(10, 'Anjali Nair', 'anjali.nair@example.com', 9345678123),
(11, 'Rohit Sinha', 'rohit.sinha@example.com', 9998887776),
(12, 'Divya Bhatt', 'divya.bhatt@example.com', 9443322110),
(13, 'Aditya Rao', 'aditya.rao@example.com', 9776655443),
(14, 'Ishita Das', 'ishita.das@example.com', 9312456789),
(15, 'Arjun Thakur', 'arjun.thakur@example.com', 9001122334),
(16, 'Meera Iyer', 'meera.iyer@example.com', 9099988776),
(17, 'Siddharth Jain', 'siddharth.jain@example.com', 9500112233),
(18, 'Riya Choudhary', 'riya.choudhary@example.com', 9887766554),
(19, 'Manish Gupta', 'manish.gupta@example.com', 9797979797),
(20, 'Pooja Khanna', 'pooja.khanna@example.com', 9665544332);


INSERT INTO Income (user_id, food_business, cloth_business, milk_business, total_income) VALUES
(1, 12000, 8000, 5000, 25000),
(2, 9500, 4000, 3000, 16500),
(3, 0, 10000, 2000, 12000),
(4, 7000, 3000, 0, 10000),
(5, 15000, 0, 2000, 17000),
(6, 11000, 7000, 4000, 22000),
(7, 8000, 9000, 3500, 20500),
(8, 9500, 0, 1000, 10500),
(9, 12000, 5000, 2500, 19500),
(10, 13000, 6000, 3500, 22500),
(11, 10000, 8000, 4000, 22000),
(12, 14000, 9000, 3000, 26000),
(13, 16000, 8500, 4200, 28700),
(14, 10500, 4500, 0, 15000),
(15, 7000, 3000, 2000, 12000),
(16, 8000, 6000, 1000, 15000),
(17, 11500, 7000, 3500, 22000),
(18, 9800, 4200, 1800, 15800),
(19, 13000, 7000, 5000, 25000),
(20, 9000, 4000, 1200, 14200);

ALTER TABLE Expenses
ADD COLUMN month varchar(20);

ALTER TABLE Income
ADD COLUMN month varchar(20);

ALTER table Income
Rename column month TO month_year;

INSERT INTO Income (month_year)
VALUES
(01/2024),
(02/2024),
(03/2024),
(04/2024),
(05/2024),
(06/2024),
(07/2024),
(08/2024),
(09/2024),
(10/2024),
(11/2024),
(12/2024),
(01/2025),
(02/2025),
(03/2025),
(04/2025),
(05/2025),
(06/2025),
(07/2025),
(08/2025)
;

INSERT INTO Expenses (month_year)
VALUES
(01/2024),
(02/2024),
(03/2024),
(04/2024),
(05/2024),
(06/2024),
(07/2024),
(08/2024),
(09/2024),
(10/2024),
(11/2024),
(12/2024),
(01/2025),
(02/2025),
(03/2025),
(04/2025),
(05/2025),
(06/2025),
(07/2025),
(08/2025)
;

-- DELETE FROM Expenses
-- WHERE month_year IN (2024,2025);

ALTER TABLE Income
DROP column month_year;

DELETE FROM Income
WHERE user_id IS NULL;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100),
    email VARCHAR(100),
    phone_no VARCHAR(15)
);

CREATE TABLE Income (
    user_id INT,
    food_business INT,
    cloth_business INT,
    milk_business INT,
    Income_date varchar(40),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Expense (
    user_id INT,
    food INT,
    electricity INT,
    rent INT,
    medication INT,
    gym INT,
    Expense_date varchar(40),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO Users (user_id, user_name, email, phone_no) VALUES
(1, 'Aarav Sharma', 'aarav.sharma@example.com', '9876543210'),
(2, 'Priya Mehta', 'priya.mehta@example.com', '9123456789'),
(3, 'Raj Patel', 'raj.patel@example.com', '9988776655'),
(4, 'Sneha Kapoor', 'sneha.kapoor@example.com', '9012345678'),
(5, 'Mohit Verma', 'mohit.verma@example.com', '9090909090');

INSERT INTO Expense (user_id, food, electricity, rent, medication, gym, Expense_date) VALUES
-- User 5: Mohit Verma (May 2025)
(5, 4300, 1050, 7900, 350, 620, '2025-05-01'),
(5, 4400, 1060, 7900, 370, 620, '2025-05-04'),
(5, 4500, 1070, 7900, 390, 620, '2025-05-07'),
(5, 4600, 1080, 7900, 410, 620, '2025-05-10'),
(5, 4700, 1090, 7900, 430, 620, '2025-05-13'),
(5, 4800, 1100, 7900, 450, 620, '2025-05-16'),
(5, 4900, 1110, 7900, 470, 620, '2025-05-19'),
(5, 5000, 1120, 7900, 490, 620, '2025-05-22'),
(5, 5100, 1130, 7900, 510, 620, '2025-05-25'),
(5, 5200, 1140, 7900, 530, 620, '2025-05-28'),

-- User 5: Mohit Verma (June 2025)
(5, 5000, 1120, 7900, 490, 620, '2025-06-01'),
(5, 5100, 1130, 7900, 510, 620, '2025-06-04'),
(5, 5200, 1140, 7900, 530, 620, '2025-06-07'),
(5, 5300, 1150, 7900, 550, 620, '2025-06-10'),
(5, 5400, 1160, 7900, 570, 620, '2025-06-13'),
(5, 5500, 1170, 7900, 590, 620, '2025-06-16'),
(5, 5600, 1180, 7900, 610, 620, '2025-06-19'),
(5, 5700, 1190, 7900, 630, 620, '2025-06-22'),
(5, 5800, 1200, 7900, 650, 620, '2025-06-25'),
(5, 5900, 1210, 7900, 670, 620, '2025-06-28');


INSERT INTO Income (user_id, food_business, cloth_business, milk_business, Income_date) VALUES
-- User 1: Aarav Sharma
-- User 2: Priya Mehta
(2, 6800, 5700, 2600, '2025-05-03'),
(2, 6900, 5750, 2650, '2025-05-06'),
(2, 7000, 5800, 2700, '2025-05-09'),
(2, 7100, 5850, 2750, '2025-05-12'),
(2, 7200, 5900, 2800, '2025-05-15'),
(2, 7300, 5950, 2850, '2025-05-18'),
(2, 7400, 6000, 2900, '2025-05-21'),
(2, 7500, 6050, 2950, '2025-05-24'),
(2, 7600, 6100, 3000, '2025-05-27'),
(2, 7700, 6150, 3050, '2025-05-30'),
(2, 7800, 6200, 3100, '2025-06-02'),
(2, 7900, 6250, 3150, '2025-06-05'),
(2, 8000, 6300, 3200, '2025-06-08'),
(2, 8100, 6350, 3250, '2025-06-11'),
(2, 8200, 6400, 3300, '2025-06-14'),
(2, 8300, 6450, 3350, '2025-06-17'),
(2, 8400, 6500, 3400, '2025-06-20'),
(2, 8500, 6550, 3450, '2025-06-23'),
(2, 8600, 6600, 3500, '2025-06-26'),
(2, 8700, 6650, 3550, '2025-06-29'),

-- User 3: Raj Patel
(3, 7200, 6400, 3200, '2025-05-04'),
(3, 7300, 6450, 3250, '2025-05-07'),
(3, 7400, 6500, 3300, '2025-05-10'),
(3, 7500, 6550, 3350, '2025-05-13'),
(3, 7600, 6600, 3400, '2025-05-16'),
(3, 7700, 6650, 3450, '2025-05-19'),
(3, 7800, 6700, 3500, '2025-05-22'),
(3, 7900, 6750, 3550, '2025-05-25'),
(3, 8000, 6800, 3600, '2025-05-28'),
(3, 8100, 6850, 3650, '2025-05-31'),
(3, 8200, 6900, 3700, '2025-06-03'),
(3, 8300, 6950, 3750, '2025-06-06'),
(3, 8400, 7000, 3800, '2025-06-09'),
(3, 8500, 7050, 3850, '2025-06-12'),
(3, 8600, 7100, 3900, '2025-06-15'),
(3, 8700, 7150, 3950, '2025-06-18'),
(3, 8800, 7200, 4000, '2025-06-21'),
(3, 8900, 7250, 4050, '2025-06-24'),
(3, 9000, 7300, 4100, '2025-06-27'),
(3, 9100, 7350, 4150, '2025-06-30'),

-- User 4: Sneha Kapoor
(4, 6900, 6100, 2900, '2025-05-02'),
(4, 7000, 6150, 2950, '2025-05-05'),
(4, 7100, 6200, 3000, '2025-05-08'),
(4, 7200, 6250, 3050, '2025-05-11'),
(4, 7300, 6300, 3100, '2025-05-14'),
(4, 7400, 6350, 3150, '2025-05-17'),
(4, 7500, 6400, 3200, '2025-05-20'),
(4, 7600, 6450, 3250, '2025-05-23'),
(4, 7700, 6500, 3300, '2025-05-26'),
(4, 7800, 6550, 3350, '2025-05-29'),
(4, 7900, 6600, 3400, '2025-06-01'),
(4, 8000, 6650, 3450, '2025-06-04'),
(4, 8100, 6700, 3500, '2025-06-07'),
(4, 8200, 6750, 3550, '2025-06-10'),
(4, 8300, 6800, 3600, '2025-06-13'),
(4, 8400, 6850, 3650, '2025-06-16'),
(4, 8500, 6900, 3700, '2025-06-19'),
(4, 8600, 6950, 3750, '2025-06-22'),
(4, 8700, 7000, 3800, '2025-06-25'),
(4, 8800, 7050, 3850, '2025-06-28'),

-- User 5: Mohit Verma
(5, 6600, 5900, 2700, '2025-05-01'),
(5, 6700, 5950, 2750, '2025-05-04'),
(5, 6800, 6000, 2800, '2025-05-07'),
(5, 6900, 6050, 2850, '2025-05-10'),
(5, 7000, 6100, 2900, '2025-05-13'),
(5, 7100, 6150, 2950, '2025-05-16'),
(5, 7200, 6200, 3000, '2025-05-19'),
(5, 7300, 6250, 3050, '2025-05-22'),
(5, 7400, 6300, 3100, '2025-05-25'),
(5, 7500, 6350, 3150, '2025-05-28'),
(5, 7600, 6400, 3200, '2025-06-01'),
(5, 7700, 6450, 3250, '2025-06-04'),
(5, 7800, 6500, 3300, '2025-06-07'),
(5, 7900, 6550, 3350, '2025-06-10'),
(5, 8000, 6600, 3400, '2025-06-13'),
(5, 8100, 6650, 3450, '2025-06-16'),
(5, 8200, 6700, 3500, '2025-06-19'),
(5, 8300, 6750, 3550, '2025-06-22'),
(5, 8400, 6800, 3600, '2025-06-25'),
(5, 8500, 6850, 3650, '2025-06-28');

INSERT INTO Categories (category_id, category_name) VALUES
(101, 'Food'),
(102, 'Electricity'),
(103, 'Rent'),
(104, 'Medication'),
(105, 'Gym');

SELECT 
    user_id,
    DATE_FORMAT(STR_TO_DATE(Expense_date, '%Y-%m-%d'), '%Y-%m') AS expense_month,
    SUM(food + electricity + rent + medication + gym) AS total_expense
FROM Expense
GROUP BY user_id, expense_month
ORDER BY user_id, expense_month;

SELECT user_id, 'Food' AS category, SUM(food) AS total_spent FROM Expense GROUP BY user_id
UNION
SELECT user_id, 'Electricity', SUM(electricity) FROM Expense GROUP BY user_id
UNION
SELECT user_id, 'Rent', SUM(rent) FROM Expense GROUP BY user_id
UNION
SELECT user_id, 'Medication', SUM(medication) FROM Expense GROUP BY user_id
UNION
SELECT user_id, 'Gym', SUM(gym) FROM Expense GROUP BY user_id;


CREATE VIEW Total_Expense AS
SELECT 
    user_id,
    SUM(food + electricity + rent + medication + gym) AS total_expense
FROM Expense
GROUP BY user_id;










	   












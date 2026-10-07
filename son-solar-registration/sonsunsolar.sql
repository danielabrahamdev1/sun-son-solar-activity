CREATE DATABASE IF NOT EXISTS `sunsonsolar`;

USE `sunsonsolar`;

-- USERS TABLE
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100) NULL,
    birthdate DATE NULL,
    gender VARCHAR(30) NULL,
    email VARCHAR(150) NULL UNIQUE,
    phone_number VARCHAR(30) NULL,
    address TEXT NULL,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    user_type ENUM('customer', 'employee', 'admin') NOT NULL DEFAULT 'customer',
    department VARCHAR(100) NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- KATHERINE SINGARAW ADMIN
INSERT IGNORE INTO users (
    first_name,
    last_name,
    middle_name,
    birthdate,
    gender,
    email,
    phone_number,
    address,
    username,
    password,
    user_type,
    department
) VALUES (
    'Katherine',
    'Singaraw',
    'Olap',
    '1990-07-01',
    'Female',
    'katherine.sinagaraw@sunsonsolar.com',
    '09291230983',
    'Pasig City',
    'KittyKat16',
    '$2y$10$example_hash',
    'admin',
    NULL
);

-- SOL SOLIS ADMIN
INSERT IGNORE INTO users (
    first_name,
    last_name,
    middle_name,
    birthdate,
    gender,
    email,
    phone_number,
    address,
    username,
    password,
    user_type,
    department
) VALUES (
    'Sol',
    'Solis',
    'Sun',
    '1967-01-08',
    'Male',
    'sol.solis@sunsonsolar.com',
    '09123456789',
    'Manila',
    'SolSolis',
    '$2y$10$example_hash',
    'admin',
    NULL
);

CREATE TABLE IF NOT EXISTS DEPARTMENT (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

INSERT IGNORE INTO DEPARTMENT (name) VALUES
('Administration'),
('IT'),
('Dispatch'),
('Accounting'),
('HR'),
('Marketing'),
('Sales'),
('Customer Service');

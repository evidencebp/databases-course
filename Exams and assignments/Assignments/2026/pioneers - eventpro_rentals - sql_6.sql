-- EventPro Rentals Database Design
-- Home Assignment 6 - DDL / Designer Part
-- This database is for a company that rents equipment for events.
-- The design separates customers, events, equipment, orders, payments,
-- delivery/pickup, and return checks.
-- DROP DATABASE IF EXISTS is used only to allow clean re-running of the script.

DROP DATABASE IF EXISTS eventpro_rentals;
CREATE DATABASE eventpro_rentals;
USE eventpro_rentals;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE Events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    event_type VARCHAR(50) NOT NULL,
    event_date DATE NOT NULL,
    event_location VARCHAR(150),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Equipment (
    equipment_id INT AUTO_INCREMENT PRIMARY KEY,
    equipment_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    total_quantity INT NOT NULL CHECK (total_quantity >= 0),
    rental_price DECIMAL(10,2) NOT NULL CHECK (rental_price >= 0),
    equipment_status VARCHAR(30) DEFAULT 'Available'
);

CREATE TABLE Rental_Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    event_id INT NOT NULL,
    rental_start_date DATE NOT NULL,
    rental_end_date DATE NOT NULL,
    order_status VARCHAR(30) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (event_id) REFERENCES Events(event_id),
    CHECK (rental_end_date >= rental_start_date)
);

CREATE TABLE Order_Items (
    order_id INT NOT NULL,
    equipment_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    item_price DECIMAL(10,2) NOT NULL CHECK (item_price >= 0),
    PRIMARY KEY (order_id, equipment_id),
    FOREIGN KEY (order_id) REFERENCES Rental_Orders(order_id),
    FOREIGN KEY (equipment_id) REFERENCES Equipment(equipment_id)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    payment_amount DECIMAL(10,2) NOT NULL CHECK (payment_amount >= 0),
    payment_date DATE NOT NULL,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30) DEFAULT 'Paid',
    FOREIGN KEY (order_id) REFERENCES Rental_Orders(order_id)
);

CREATE TABLE Deliveries (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    delivery_date DATE NOT NULL,
    pickup_date DATE NOT NULL,
    delivery_address VARCHAR(150) NOT NULL,
    delivery_status VARCHAR(30) DEFAULT 'Scheduled',
    pickup_status VARCHAR(30) DEFAULT 'Not Completed',
    FOREIGN KEY (order_id) REFERENCES Rental_Orders(order_id),
    CHECK (pickup_date >= delivery_date)
);

CREATE TABLE Return_Checks (
    return_check_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    check_date DATE NOT NULL,
    equipment_condition VARCHAR(100),
    notes VARCHAR(255),
    FOREIGN KEY (order_id) REFERENCES Rental_Orders(order_id)
);
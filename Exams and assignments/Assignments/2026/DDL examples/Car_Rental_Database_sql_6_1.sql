-- Assignment 6: DDL — Car Rental Database
-- Student ID: 324943109

CREATE DATABASE IF NOT EXISTS car_rental;
USE car_rental;

CREATE TABLE vehicles (
  license_num    VARCHAR(20)                        NOT NULL,
  vehicle_type   VARCHAR(50),
  company        VARCHAR(50),
  size           ENUM('small','medium','large')     NOT NULL,
  daily_rate     DECIMAL(8,2)                       NOT NULL,
  PRIMARY KEY (license_num)
);

CREATE TABLE customers (
  customer_id    INT             NOT NULL AUTO_INCREMENT,
  first_name     VARCHAR(50)     NOT NULL,
  last_name      VARCHAR(50)     NOT NULL,
  city           VARCHAR(50),
  street         VARCHAR(100),
  phone          VARCHAR(20),
  email          VARCHAR(100),
  PRIMARY KEY (customer_id)
);

CREATE TABLE transactions (
  transaction_id INT             NOT NULL AUTO_INCREMENT,
  customer_id    INT             NOT NULL,
  vehicle_id     VARCHAR(20)     NOT NULL,
  start_date     DATE            NOT NULL,
  end_date       DATE            NOT NULL,
  gross_total    DECIMAL(10,2)   NOT NULL,
  PRIMARY KEY (transaction_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (vehicle_id)  REFERENCES vehicles(license_num)
);

CREATE TABLE service_types (
  service_type_id INT            NOT NULL AUTO_INCREMENT,
  type_name       VARCHAR(50)    NOT NULL,
  rate            DECIMAL(8,2),
  duration_days   INT,
  PRIMARY KEY (service_type_id)
);

CREATE TABLE maintenance (
  service_id      INT            NOT NULL AUTO_INCREMENT,
  vehicle_id      VARCHAR(20)    NOT NULL,
  service_type_id INT            NOT NULL,
  start_date      DATE           NOT NULL,
  end_date        DATE,
  status          ENUM('completed','scheduled') NOT NULL,
  PRIMARY KEY (service_id),
  FOREIGN KEY (vehicle_id)       REFERENCES vehicles(license_num),
  FOREIGN KEY (service_type_id)  REFERENCES service_types(service_type_id)
);

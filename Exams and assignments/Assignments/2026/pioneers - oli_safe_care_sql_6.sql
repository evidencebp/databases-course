-- Oli Safe Care Database Design
-- Home Assignment 6- DDL / Designer Part
-- The schema is designed according to the customer requirements:
-- customers, products, inventory, online orders, deliveries,
-- coupons, monthly expenses, external stores.

DROP DATABASE IF EXISTS oli_safe_care;
CREATE DATABASE oli_safe_care;
USE oli_safe_care;

-- 1. Customers
-- Stores customer details and allows order history through the orders table.
-- City is stored as part of the customer address information.
-- A separate cities table is not needed because the business does not manage cities separately.
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    city VARCHAR(100),
    address VARCHAR(255)
);

-- 2. Product Categories
-- Groups products into categories such as pregnancy, postpartum, baby care, and oils.
CREATE TABLE product_categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

-- 3. Products
-- Stores the product catalog, selling price, product cost, and packaging cost.
-- DECIMAL(10,2) is used for monetary values in order to keep accurate financial calculations.
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    category_id INT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    product_description VARCHAR(500),
    selling_price DECIMAL(10,2) NOT NULL CHECK (selling_price >= 0),
    product_cost DECIMAL(10,2) NOT NULL CHECK (product_cost >= 0),
    packaging_cost DECIMAL(10,2) DEFAULT 8.00 CHECK (packaging_cost >= 0), #package average cost is 8 shekels
    product_status VARCHAR(30) DEFAULT 'Active',

    FOREIGN KEY (category_id) REFERENCES product_categories(category_id)
);

-- 4. Inventory Locations
-- Stores the company warehouse and future external stores such as Shilav branches.
CREATE TABLE inventory_locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL,
    location_type VARCHAR(50),
    city VARCHAR(100),
    address VARCHAR(255)
);

-- 5. Inventory
-- Tracks how many units of each product exist in each location.
CREATE TABLE inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    location_id INT NOT NULL,
    quantity_in_stock INT NOT NULL CHECK (quantity_in_stock >= 0),

    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (location_id) REFERENCES inventory_locations(location_id)
);
CREATE INDEX idx_inventory_product ON inventory(product_id);
CREATE INDEX idx_inventory_location ON inventory(location_id);


-- 6. Coupons
-- Stores discount coupons and influencer codes.
CREATE TABLE coupons (
    coupon_id INT AUTO_INCREMENT PRIMARY KEY,
    coupon_code VARCHAR(50) NOT NULL,
    discount_type VARCHAR(30),
    discount_value DECIMAL(10,2) CHECK (discount_value >= 0),
    coupon_source VARCHAR(50),
    influencer_name VARCHAR(100),
    commission_percent DECIMAL(5,2) CHECK (commission_percent >= 0),
    start_date DATE,
    end_date DATE
);

-- 7. Orders
-- Stores the main customer order, including basic payment information.
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    coupon_id INT,
    order_date DATE NOT NULL,
    order_status VARCHAR(30) DEFAULT 'Pending',
    fulfillment_method VARCHAR(30) NOT NULL,
    payment_status VARCHAR(30) DEFAULT 'Pending',
    payment_method VARCHAR(50),
    payment_date DATE,
    subtotal_amount DECIMAL(10,2) CHECK (subtotal_amount >= 0),
    discount_amount DECIMAL(10,2) CHECK (discount_amount >= 0),
    shipping_fee DECIMAL(10,2) CHECK (shipping_fee >= 0),
    total_amount DECIMAL(10,2) CHECK (total_amount >= 0),

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (coupon_id) REFERENCES coupons(coupon_id)
);
CREATE INDEX idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_orders_date ON orders(order_date);

-- 8. Order Items
-- Stores the products and quantities included in each order.
-- This table is needed because one order can include many products,
-- and one product can appear in many different orders.
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity_ordered INT NOT NULL CHECK (quantity_ordered > 0),
    unit_price DECIMAL(10,2) NOT NULL CHECK (unit_price >= 0),
    unit_product_cost DECIMAL(10,2) CHECK (unit_product_cost >= 0),
    unit_packaging_cost DECIMAL(10,2) CHECK (unit_packaging_cost >= 0),
    line_total DECIMAL(10,2) CHECK (line_total >= 0),

    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
CREATE INDEX idx_order_items_product ON order_items(product_id);


-- 9. Deliveries
-- Stores delivery or self-pickup information for each order.
-- Some customers choose home delivery with a fee, and others choose free self-pickup.
CREATE TABLE deliveries (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    fulfillment_method VARCHAR(30) NOT NULL,
    delivery_address VARCHAR(255),
    pickup_location VARCHAR(255),
    delivery_status VARCHAR(30),
    shipment_date DATE,
    delivery_date DATE,

    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- 10. Monthly Expenses
-- Stores business expenses so managers can compare income and expenses by month.
CREATE TABLE monthly_expenses (
    expense_id INT AUTO_INCREMENT PRIMARY KEY,
    expense_year INT NOT NULL,
    expense_month INT NOT NULL,
    expense_category VARCHAR(50),
    expense_description VARCHAR(255),
    amount DECIMAL(10,2) NOT NULL CHECK (amount >= 0)
);

-- 11. External Store Orders
-- Supports future orders and restocking for external stores such as Shilav branches.
CREATE TABLE external_store_orders (
    external_order_id INT AUTO_INCREMENT PRIMARY KEY,
    location_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_status VARCHAR(30),
    notes VARCHAR(500),

    FOREIGN KEY (location_id) REFERENCES inventory_locations(location_id)
);

-- 12. External Store Order Items
-- Stores the products and quantities included in external store orders.
CREATE TABLE external_store_order_items (
    external_order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    external_order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity_ordered INT NOT NULL CHECK (quantity_ordered > 0),
    wholesale_price DECIMAL(10,2) CHECK (wholesale_price >= 0),

    FOREIGN KEY (external_order_id) REFERENCES external_store_orders(external_order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
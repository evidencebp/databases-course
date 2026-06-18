DROP DATABASE IF EXISTS citypark_db;

CREATE DATABASE IF NOT EXISTS citypark_db;
USE citypark_db;

-- 1. Drivers Table
CREATE TABLE drivers (
    driver_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    license_number VARCHAR(20) UNIQUE NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

-- 2. Vehicles Table
CREATE TABLE vehicles (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    driver_id INT NOT NULL,
    license_plate VARCHAR(15) UNIQUE NOT NULL,
    make VARCHAR(50),
    model VARCHAR(50),
    color VARCHAR(20),
    FOREIGN KEY (driver_id) REFERENCES drivers(driver_id)
);

-- 3. Parking Zones Table
CREATE TABLE parking_zones (
    zone_id INT PRIMARY KEY AUTO_INCREMENT,
    zone_name VARCHAR(100) NOT NULL,
    address VARCHAR(200),
    total_spots INT NOT NULL,
    hourly_rate DECIMAL(10,2) NOT NULL,
    zone_type VARCHAR(50)
);

-- 4. Inspectors Table
CREATE TABLE inspectors (
    inspector_id INT PRIMARY KEY AUTO_INCREMENT,
    assigned_zone_id INT,
    full_name VARCHAR(100) NOT NULL,
    badge_number VARCHAR(50) UNIQUE NOT NULL,
    phone VARCHAR(20),
    FOREIGN KEY (assigned_zone_id) REFERENCES parking_zones(zone_id)
);

-- 5. Parking Sessions Table
CREATE TABLE parking_sessions (
    session_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_id INT NOT NULL,
    zone_id INT NOT NULL,
    entry_time DATETIME NOT NULL,
    exit_time DATETIME,
    total_fee DECIMAL(10,2),
    payment_status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    FOREIGN KEY (zone_id) REFERENCES parking_zones(zone_id)
);

-- 6. Permits Table
CREATE TABLE permits (
    permit_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_id INT NOT NULL,
    zone_id INT NOT NULL,
    permit_type VARCHAR(50) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    annual_fee DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    FOREIGN KEY (zone_id) REFERENCES parking_zones(zone_id)
);

-- 7. Violations Table
CREATE TABLE violations (
    violation_id INT PRIMARY KEY AUTO_INCREMENT,
    vehicle_id INT NOT NULL,
    zone_id INT NOT NULL,
    inspector_id INT NOT NULL,
    violation_time DATETIME NOT NULL,
    violation_type VARCHAR(100) NOT NULL,
    fine_amount DECIMAL(10,2) NOT NULL,
    fine_status VARCHAR(20) DEFAULT 'Unpaid',
    FOREIGN KEY (vehicle_id) REFERENCES vehicles(vehicle_id),
    FOREIGN KEY (zone_id) REFERENCES parking_zones(zone_id),
    FOREIGN KEY (inspector_id) REFERENCES inspectors(inspector_id)
);

-- 8. Payments Table
CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    session_id INT,
    violation_id INT,
    amount_paid DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50),
    CONSTRAINT chk_payment_ref CHECK (
        session_id IS NOT NULL OR violation_id IS NOT NULL
    ),
    FOREIGN KEY (session_id) REFERENCES parking_sessions(session_id),
    FOREIGN KEY (violation_id) REFERENCES violations(violation_id)
);
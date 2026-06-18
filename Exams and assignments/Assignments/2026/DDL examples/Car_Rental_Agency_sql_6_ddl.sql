-- ============================================================
--  FastTrack Tolls – Toll Road Management System
--  Assignment 6 – DDL
-- ============================================================
CREATE SCHEMA IF NOT EXISTS fasttrack_tolls;
USE fasttrack_tolls;

-- 1. Customers
--  • email: UNIQUE business key for login and contact.
--  • customer_id: Surrogate PK prevents foreign key breakage if email/address changes.
CREATE TABLE Customers (
    customer_id       INT          NOT NULL AUTO_INCREMENT,
    first_name        VARCHAR(50)  NOT NULL,
    last_name         VARCHAR(50)  NOT NULL,
    email             VARCHAR(100) NOT NULL,
    phone             VARCHAR(20),
    billing_address   VARCHAR(200),
    registration_date DATE         NOT NULL,
    CONSTRAINT pk_customers       PRIMARY KEY (customer_id),
    CONSTRAINT uq_customers_email UNIQUE      (email)
);

-- 2. Vehicles
--  • vehicle_type: ENUM enforces the 5 valid domain classifications.
--  • license_plate: UNIQUE to prevent legal duplicates.
--  • Separated from Customers to avoid data redundancy.
CREATE TABLE Vehicles (
    vehicle_id    INT         NOT NULL AUTO_INCREMENT,
    license_plate VARCHAR(20) NOT NULL,
    vehicle_type  ENUM('motorcycle','private_car',
                       'light_truck','heavy_truck','bus') NOT NULL,
    make          VARCHAR(50),
    model         VARCHAR(50),
    color         VARCHAR(30),
    customer_id   INT         NOT NULL,
    CONSTRAINT pk_vehicles      PRIMARY KEY (vehicle_id),
    CONSTRAINT uq_vehicles_lp   UNIQUE      (license_plate),
    CONSTRAINT fk_vehicles_cust FOREIGN KEY (customer_id)
        REFERENCES Customers (customer_id)
);

-- 3. Intersections
--  • position: Constrained to 1–8 via CHECK and UNIQUE constraints.
--  • Distinct entity allows stable naming without updating thousands of Drives.
--  • No road_id FK needed as the system manages a single road.
CREATE TABLE Intersections (
    intersection_id   INT          NOT NULL AUTO_INCREMENT,
    intersection_name VARCHAR(100) NOT NULL,
    position          INT          NOT NULL,
    CONSTRAINT pk_intersections  PRIMARY KEY (intersection_id),
    CONSTRAINT uq_intersect_pos  UNIQUE      (position),
    CONSTRAINT chk_intersect_pos CHECK       (position BETWEEN 1 AND 8)
);

-- 4. Toll_Rates
--  • rate_per_section: Base price for one segment per vehicle_type.
--  • Versioning: valid_from/valid_to dates track historical rates (NULL valid_to = active).
--  • Per-section model chosen over 56 entry-exit pairs for easier auditing and maintenance.
CREATE TABLE Toll_Rates (
    rate_id          INT          NOT NULL AUTO_INCREMENT,
    vehicle_type     ENUM('motorcycle','private_car',
                          'light_truck','heavy_truck','bus') NOT NULL,
    rate_per_section DECIMAL(8,2) NOT NULL,
    valid_from       DATE         NOT NULL,
    valid_to         DATE,        -- NULL = currently active
    CONSTRAINT pk_toll_rates PRIMARY KEY (rate_id)
);

-- 5. Invoices
--  • References Customers (not Vehicles) to group all owned vehicles into one bill.
--  • total_amount: Stored snapshot of billed amount to freeze financial history, preventing drift.
CREATE TABLE Invoices (
    invoice_id     INT           NOT NULL AUTO_INCREMENT,
    customer_id    INT           NOT NULL,
    invoice_date   DATE          NOT NULL,
    period_start   DATE          NOT NULL,
    period_end     DATE          NOT NULL,
    total_amount   DECIMAL(10,2) NOT NULL,
    payment_status ENUM('pending','paid','overdue','cancelled')
                                 NOT NULL DEFAULT 'pending',
    payment_date   DATE,
    CONSTRAINT pk_invoices     PRIMARY KEY (invoice_id),
    CONSTRAINT fk_invoice_cust FOREIGN KEY (customer_id)
        REFERENCES Customers (customer_id)
);

-- 6. Drives
--  • exit_intersection_id/exit_time: NULL while drive is in progress.
--  • num_sections: Denormalized (|exit - entry|) to optimize queries and handle exceptions.
--  • toll_amount: Snapshot of calculated fee at exit to freeze historical pricing.
--  • invoice_id: NULL until the monthly billing run processes the drive.
--  • References Vehicles (chargeable event), not Customers.
CREATE TABLE Drives (
    drive_id              INT           NOT NULL AUTO_INCREMENT,
    vehicle_id            INT           NOT NULL,
    entry_intersection_id INT           NOT NULL,
    exit_intersection_id  INT,
    entry_time            DATETIME      NOT NULL,
    exit_time             DATETIME,
    num_sections          TINYINT,
    toll_amount           DECIMAL(8,2),
    invoice_id            INT,
    CONSTRAINT pk_drives        PRIMARY KEY (drive_id),
    CONSTRAINT fk_drive_vehicle FOREIGN KEY (vehicle_id)
        REFERENCES Vehicles      (vehicle_id),
    CONSTRAINT fk_drive_entry   FOREIGN KEY (entry_intersection_id)
        REFERENCES Intersections (intersection_id),
    CONSTRAINT fk_drive_exit    FOREIGN KEY (exit_intersection_id)
        REFERENCES Intersections (intersection_id),
    CONSTRAINT fk_drive_invoice FOREIGN KEY (invoice_id)
        REFERENCES Invoices      (invoice_id)
);
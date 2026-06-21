-- skyline asset management database design
-- this database manages an in-house real estate portfolio .
-- the design separates properties, units, amenities, tenants, leases, financials, and maintenance.
-- Note: View for concatenated address and amenities not included in this file 

drop database if exists skyline_asset_management;
create database skyline_asset_management;
use skyline_asset_management;

create table properties (
    property_id int auto_increment primary key,
    lot_number varchar(50) unique,
    street varchar(100) not null,
    city varchar(50) not null,
    zip_code varchar(20),
    purchase_size_sqm decimal(10, 2),
    purchase_price decimal(15, 2),
    purchase_date date not null,
    build_year int
);

create table units (
    unit_id int auto_increment primary key,
    property_id int not null,
    unit_number varchar(20) not null,
    foreign key (property_id) references properties(property_id) on delete cascade
);

create table amenities (
    amenity_id int auto_increment primary key,
    amenity_name varchar(50) unique not null
);

create table unit_amenities (
    unit_id int not null,
    amenity_id int not null,
    primary key (unit_id, amenity_id),
    foreign key (unit_id) references units(unit_id) on delete cascade,
    foreign key (amenity_id) references amenities(amenity_id) on delete cascade
);

create table tenants (
    tenant_id int auto_increment primary key,
    national_id varchar(50) unique not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    phone_number varchar(20) 
        check (phone_number regexp '^([0-9]{2,3})-[0-9]{3}-[0-9]{3}$'),
    email varchar(100)
);

create table leases (
    lease_id int auto_increment primary key,
    unit_id int not null,
    start_date date not null,
    end_date date not null,
    monthly_rent decimal(10, 2) not null check (monthly_rent >= 0),
    security_deposit decimal(10, 2) not null check (security_deposit >= 0),
    foreign key (unit_id) references units(unit_id) on delete cascade
);

create table lease_tenants (
    lease_id int not null,
    tenant_id int not null,
    primary key (lease_id, tenant_id),
    foreign key (lease_id) references leases(lease_id) on delete cascade,
    foreign key (tenant_id) references tenants(tenant_id) on delete cascade
);

create table income (
    income_id int auto_increment primary key,
    lease_id int not null,
    payment_date date not null,
    amount decimal(10, 2) not null check (amount >= 0),
    foreign key (lease_id) references leases(lease_id) on delete cascade
);

create table liabilities (
    liability_id int auto_increment primary key,
    liability_type enum('Supplier Debt', 'Salary Payable') not null,
    description varchar(255),
    amount decimal(10, 2) not null check (amount >= 0),
    due_date date not null
);

create table contractors (
    contractor_id int auto_increment primary key,
    company_name varchar(100) not null,
    phone_number varchar(20),
    default_hourly_rate decimal(10, 2) check (default_hourly_rate >= 0)
);

create table work_orders (
    work_order_id int auto_increment primary key,
    unit_id int not null,
    contractor_id int,
    issue_description text not null,
    report_date date not null,
    status enum('Open', 'In Progress', 'Closed') default 'Open',
    billed_amount decimal(10, 2) default 0.00 check (billed_amount >= 0),
    foreign key (unit_id) references units(unit_id) on delete cascade,
    foreign key (contractor_id) references contractors(contractor_id) on delete set null
);
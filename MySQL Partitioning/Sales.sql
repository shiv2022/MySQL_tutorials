CREATE TABLE Sales ( cust_id INT NOT NULL, name VARCHAR(40),   
store_id VARCHAR(20) NOT NULL, bill_no INT NOT NULL,   
bill_date DATE PRIMARY KEY NOT NULL, amount DECIMAL(8,2) NOT NULL)   
PARTITION BY RANGE (year(bill_date))(   
PARTITION p0 VALUES LESS THAN (2016),   
PARTITION p1 VALUES LESS THAN (2017),   
PARTITION p2 VALUES LESS THAN (2018),   
PARTITION p3 VALUES LESS THAN (2020)); 

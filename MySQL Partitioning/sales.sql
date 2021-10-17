CREATE DATABASE test_partition;

CREATE TABLE test_partition.sales ( cust_id INT NOT NULL, name VARCHAR(40),   
store_id VARCHAR(20) NOT NULL, bill_no INT NOT NULL,   
bill_date DATE PRIMARY KEY NOT NULL, amount DECIMAL(8,2) NOT NULL)   
PARTITION BY RANGE (year(bill_date))(   
PARTITION p0 VALUES LESS THAN (2016),   
PARTITION p1 VALUES LESS THAN (2017),   
PARTITION p2 VALUES LESS THAN (2018),   
PARTITION p3 VALUES LESS THAN (2020)); 

INSERT INTO test_partition.sales(cust_id, name, store_id, bill_no, bill_date, amount) VALUES   
(1, 'Mike', 'S001', 101, '2015-01-02', 125.56),   
(2, 'Robert', 'S003', 103, '2015-01-25', 476.50),   
(3, 'Peter', 'S012', 122, '2016-02-15', 335.00),   
(4, 'Joseph', 'S345', 121, '2016-03-26', 787.00),   
(5, 'Harry', 'S234', 132, '2017-04-19', 678.00),   
(6, 'Stephen', 'S743', 111, '2017-05-31', 864.00),   
(7, 'Jacson', 'S234', 115, '2018-06-11', 762.00),   
(8, 'Smith', 'S012', 125, '2019-07-24', 300.00),   
(9, 'Adam', 'S456', 119, '2019-08-02', 492.20); 

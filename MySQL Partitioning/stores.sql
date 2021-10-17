CREATE TABLE IF NOT EXISTS test_partition.stores (   
    cust_name VARCHAR(40),   
    bill_no VARCHAR(20) NOT NULL,   
    store_id INT PRIMARY KEY NOT NULL,   
    bill_date DATE NOT NULL,   
    amount DECIMAL(8,2) NOT NULL  
)  
PARTITION BY LIST(store_id) (   
PARTITION pEast VALUES IN (101, 103, 105),   
PARTITION pWest VALUES IN (102, 104, 106),   
PARTITION pNorth VALUES IN (107, 109, 111),   
PARTITION pSouth VALUES IN (108, 110, 112)); 

INSERT INTO stores(cust_name, bill_no, store_id, bill_date, amount) VALUES
('Mike', 'S001', 101, '2015-01-02', 125.56),   
('Robert', 'S003', 103, '2015-01-25', 476.50),   
('Peter', 'S012', 122, '2016-02-15', 335.00),   
('Joseph', 'S345', 121, '2016-03-26', 787.00),   
('Harry', 'S234', 132, '2017-04-19', 678.00),   
('Stephen', 'S743', 111, '2017-05-31', 864.00),   
('Jacson', 'S234', 115, '2018-06-11', 762.00),   
('Smith', 'S012', 125, '2019-07-24', 300.00),   
('Adam', 'S456', 119, '2019-08-02', 492.20); 


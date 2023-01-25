--        SQL2


1:machinetest=# INSERT INTO tbl_stock(vchr_name,int_Quantity,int_Price,fk_int_supplier) values ('Mouse',10,500,1),('Keyboard',5,450,3),
('Modem',10,1200,2),('Memory',100,1500,5),('Headphone',50,750,4),('Memory',2,3500,4);
machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |       500 |               1
               2 | Keyboard  |            5 |       450 |               3
               3 | Modem     |           10 |      1200 |               2
               4 | Memory    |          100 |      1500 |               5
               5 | Headphone |           50 |       750 |               4
               6 | Memory    |            2 |      3500 |               4
(6 rows)




2:machinetest=# UPDATE tbl_stock set int_price = int_price + 1.5;
UPDATE 6
machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(6 rows)



3:machinetest=# SELECT * from tbl_stock where int_price>1000;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
(3 rows)




4:LINE 1: SELECT * from tbl_stock where vchr_name  order by vchr_name ...
                                      ^
machinetest=# SELECT * from tbl_stock order by vchr_name ASC;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
               3 | Modem     |           10 |    1201.5 |               2
               1 | Mouse     |           10 |     501.5 |               1
(6 rows)



5:machinetest=# SELECT * from tbl_stock order by vchr_name ASC limit 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | Keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)


6:machinetest=# SELECT * from tbl_stock order by vchr_name desc limit 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)


7:machinetest=# SELECT vchr_name,int_quantity,int_price,int_quantity*int_price as extended_price from tbl_stock;
 vchr_name | int_quantity | int_price | extended_price
-----------+--------------+-----------+----------------
 Mouse     |           10 |     501.5 |           5015
 Keyboard  |            5 |     451.5 |         2257.5
 Modem     |           10 |    1201.5 |          12015
 Memory    |          100 |    1501.5 |         150150
 Headphone |           50 |     751.5 |          37575
 Memory    |            2 |    3501.5 |           7003
(6 rows)

8:machinetest=# DELETE from tbl_stock where fk_int_supplier=5;
machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(5 rows)



 9:machinetest=# INSERT INTO tbl_dept(vchr_dept_name,vchr_dept_description) values('Computer Science','CS'),('Electronics','EC'),('Commerce','CC'),('Arts','AR');
INSERT 0 4
machinetest=# select * from tbl_dept;
 pk_int_dept_id |  vchr_dept_name  | vchr_dept_description
----------------+------------------+-----------------------
              1 | Computer Science | CS
              2 | Electronics      | EC
              3 | Commerce         | CC
              4 | Arts             | AR
(4 rows)
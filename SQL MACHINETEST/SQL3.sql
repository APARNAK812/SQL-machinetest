--             SQL3

1:machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
               8 | Memory    |          100 |    1501.5 |               5
(6 rows)


machinetest=# SELECT SUM (int_quantity*int_price) as Total_Cost from tbl_stock;
 total_cost
------------
   214015.5
(1 row)


2:machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
               8 | Memory    |          100 |    1501.5 |               5
(6 rows)


machinetest=# SELECT SUM (int_quantity) as Total_Product from tbl_stock;
 total_product
---------------
           177
(1 row)


3:machinetest=# select pk_int_stock_id, upper(vchr_name)as vchr_name,int_quantity,round(int_price),fk_int_supplier from tbl_stock;
 pk_int_stock_id |   vchr_name   | int_quantity | round | fk_int_supplier
-----------------+-----------+--------------+-------+-----------------
               1 | MOUSE     |           10 |   502 |               1
               2 | KEYBOARD  |            5 |   452 |               3
               3 | MODEM     |           10 |  1202 |               2
               5 | HEADPHONE |           50 |   752 |               4
               6 | MEMORY    |            2 |  3502 |               4
               8 | MEMORY    |          100 |  1502 |               5
(6 rows)




4:machinetest=# select pk_int_stock_id, upper(vchr_name),int_quantity,round(int_price),fk_int_supplier from tbl_stock;
 pk_int_stock_id |   upper   | int_quantity | round | fk_int_supplier
-----------------+-----------+--------------+-------+-----------------
               1 | MOUSE     |           10 |   502 |               1
               2 | KEYBOARD  |            5 |   452 |               3
               3 | MODEM     |           10 |  1202 |               2
               5 | HEADPHONE |           50 |   752 |               4
               6 | MEMORY    |            2 |  3502 |               4
               8 | MEMORY    |          100 |  1502 |               5
(6 rows)


machinetest=# SELECT COUNT(vchr_name) as items from tbl_stock;
 items
-------
     5
(1 row)




5:machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
               8 | Memory    |          100 |    1501.5 |               5
(6 rows)


machinetest=# select vchr_name,int_price from tbl_stock where int_price>1600;
 vchr_name | int_price
-----------+-----------
 Memory    |    3501.5
(1 row)

(1 row)

6:machinetest=# select * from tbl_enrollment;
 pk_int_enrollment_id | int_count | fk_int_class_id
----------------------+-----------+-----------------
                    8 |        40 |               1
                    9 |        15 |               2
                   10 |        10 |               3
                   11 |        12 |               4
                   12 |        60 |               2
                   13 |        14 |               6
                   14 |       200 |               7
(7 rows)


machinetest=# SELECT SUM (int_count) as Total_Enrollment from tbl_enrollment;
 total_enrollment
------------------
              351
(1 row)


7:machinetest=# select * from tbl_enrollment;
 pk_int_enrollment_id | int_count | fk_int_class_id
----------------------+-----------+-----------------
                    8 |        40 |               1
                    9 |        15 |               2
                   10 |        10 |               3
                   11 |        12 |               4
                   12 |        60 |               2
                   13 |        14 |               6
                   14 |       200 |               7
(7 rows)


machinetest=# SELECT COUNT(vchr_class_name) as items from tbl_classes;
 items
-------
     7
(1 row)


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


9:machinetest=# select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | Keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
               8 | Memory    |          100 |    1501.5 |               5
(6 rows)


machinetest=# SELECT CONCAT(vchr_name, int_price) AS Product_price from tbl_stock;
 product_price
----------------
 Mouse501.5
 Keyboard451.5
 Modem1201.5
 Headphone751.5
 Memory3501.5
 Memory1501.5
(6 rows)


10:machinetest=# SELECT name,course from tbl_student left join tbl_grade on tbl_student.roll_no=tbl_grade.roll_no where grade like'A';
  name   | course
---------+--------
 Akhil   | C
 Maya    | Java
 Maya    | PHP
 Paul    | Java
 Sandeep | PHP
(5 rows)



11:machinetest=# SELECT name from tbl_student left join tbl_grade on tbl_student.roll_no=tbl_grade.roll_no where grade like'B';
 name
-------
 Akhil
 Maya
 Anoop
 Paul
(4 rows)



12:machinetest=# SELECT tbl_student.roll_no ,name,course from tbl_student left join tbl_grade on tbl_student.roll_no=tbl_grade.roll_no;
 roll_no |  name   | course
---------+---------+--------
       2 | Akhil   | C
       2 | Akhil   | Java
       1 | Paul    | C
       1 | Paul    | Java
       4 | Maya    | PHP
       4 | Maya    | Java
       4 | Maya    | C
       8 | Anoop   | Java
       5 | Sandeep | PHP
       5 | Sandeep | Java
(10 rows)


13:machinetest=# SELECT name from tbl_student left join tbl_grade on tbl_student.roll_no=tbl_grade.roll_no where tbl_grade.course like'Java' and tbl_student.city like 'Banglore';
 name
-------
 Maya
 Anoop
(2 rows)


14:machinetest=# SELECT name, course from tbl_grade right join tbl_student on tbl_grade.roll_no=tbl_student.roll_no where tbl_student.name like 'A%';
 name  | course
-------+--------
 Akhil | C
 Akhil | Java
 Anoop | Java
(3 rows)

15:machinetest=# select name,date_part('year',age(dob)) as age from tbl_student;
  name   | age
---------+-----
 Akhil   |  37
 Maya    |  35
 Anoop   |  32
 Paul    |  31
 Sandeep |  29


16:machinetest=# select name,to_char(dob,'DD MON YYYY')from tbl_student;
  name   |   to_char
---------+-------------
 Akhil   | 12 JAN 1986
 Maya    | 12 NOV 1987
 Anoop   | 22 DEC 1990
 Paul    | 13 MAR 1991
 Sandeep | 14 JUN 1993
(5 rows) 
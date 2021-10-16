
Setting environment for using XAMPP for Windows.
User@LAPTOP-F0M0ITF8 c:\xampp
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| akademik           |
| apotek             |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| praktikum          |
| rt08               |
| test               |
+--------------------+
9 rows in set (0.007 sec)

MariaDB [(none)]> use akademik;
Database changed
MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     |
+-------+-------------+------+----------+------------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 |
+-------+-------------+------+----------+------------+
4 rows in set (0.025 sec)

MariaDB [akademik]> ALTER TABLE Mahasiswa Motor varchar (50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'varchar (50)' at line 1
MariaDB [akademik]> ALTER TABLE Mahasiswa ADD Motor varchar (50);
Query OK, 0 rows affected (0.026 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+-------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor |
+-------+-------------+------+----------+------------+-------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | NULL  |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | NULL  |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 | NULL  |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 | NULL  |
+-------+-------------+------+----------+------------+-------+
4 rows in set (0.001 sec)

MariaDB [akademik]> DESC Mahasiswa;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| Nim    | varchar(5)  | NO   | PRI | NULL    |       |
| Nama   | varchar(50) | YES  |     | NULL    |       |
| Jkl    | varchar(1)  | YES  |     | NULL    |       |
| Alamat | text        | YES  |     | NULL    |       |
| Tgllhr | date        | YES  |     | NULL    |       |
| Motor  | varchar(50) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
6 rows in set (0.019 sec)

MariaDB [akademik]> INSERT INTO Mahasiswa VALUES
    -> ('MHS01','Siti Aminah','P','SOLO','1995-10-01','Honda')
    -> ;
ERROR 1062 (23000): Duplicate entry 'MHS01' for key 'PRIMARY'
MariaDB [akademik]> INSERT INTO Mahasiswa VALUES
    -> (MHS01,'Siti Aminah','P','SOLO','1995-10-01','Honda');
ERROR 1054 (42S22): Unknown column 'MHS01' in 'field list'
MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+-------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor |
+-------+-------------+------+----------+------------+-------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | NULL  |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | NULL  |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 | NULL  |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 | NULL  |
+-------+-------------+------+----------+------------+-------+
4 rows in set (0.000 sec)

MariaDB [akademik]> INSERT INTO Mahasiswa VALUES
    -> (MHS01,'Siti Aminah','P','SOLO','1995-10-01','Honda');
ERROR 1054 (42S22): Unknown column 'MHS01' in 'field list'
MariaDB [akademik]> ('MHS01','Siti Aminah','P','SOLO','1995-10-01','Honda');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''MHS01','Siti Aminah','P','SOLO','1995-10-01','Honda')' at line 1
MariaDB [akademik]> INSERT INTO Mahasiswa VALUES
    -> ('MHS01','Siti Aminah','P','SOLO','1995-10-01','Honda');
ERROR 1062 (23000): Duplicate entry 'MHS01' for key 'PRIMARY'
MariaDB [akademik]> INSERT INTO Mahasiswa VALUES
    -> (MHS01,'Siti Aminah','P','SOLO','1995-10-01','Honda');
ERROR 1054 (42S22): Unknown column 'MHS01' in 'field list'
MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Nama = 'Siti Aminah'
    -> where Motor = 'Honda';
Query OK, 0 rows affected (0.028 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+-------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor |
+-------+-------------+------+----------+------------+-------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | NULL  |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | NULL  |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 | NULL  |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 | NULL  |
+-------+-------------+------+----------+------------+-------+
4 rows in set (0.000 sec)

MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Nim = 'MHS01'
    -> where Motor = 'Honda';
Query OK, 0 rows affected (0.000 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+-------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor |
+-------+-------------+------+----------+------------+-------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | NULL  |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | NULL  |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 | NULL  |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 | NULL  |
+-------+-------------+------+----------+------------+-------+
4 rows in set (0.000 sec)

MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Nim = 'MHS01'
    -> WHERE Jkl = 'L';
ERROR 1062 (23000): Duplicate entry 'MHS01' for key 'PRIMARY'
MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Nama = 'Siti Aminah'
    -> WHERE Jkl = 'L';
Query OK, 1 row affected (0.011 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+-------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor |
+-------+-------------+------+----------+------------+-------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | NULL  |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | NULL  |
| MHS03 | Siti Aminah | L    | SEMARANG | 1998-08-11 | NULL  |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 | NULL  |
+-------+-------------+------+----------+------------+-------+
4 rows in set (0.001 sec)

MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Nama = 'Amirudin'
    -> WHERE Jkl = 'L';
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+-------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor |
+-------+-------------+------+----------+------------+-------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | NULL  |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | NULL  |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 | NULL  |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 | NULL  |
+-------+-------------+------+----------+------------+-------+
4 rows in set (0.001 sec)

MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Motor = 'Honda'
    -> Nama = 'Siti Aminah';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'Nama = 'Siti Aminah'' at line 3
MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Motor = 'Honda'
    -> WHERE Nama = 'Siti Aminah';
Query OK, 1 row affected (0.012 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+-------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor |
+-------+-------------+------+----------+------------+-------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | Honda |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | NULL  |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 | NULL  |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 | NULL  |
+-------+-------------+------+----------+------------+-------+
4 rows in set (0.000 sec)

MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Motor = 'Yamaha'
    -> WHERE Nama = 'Rita';
Query OK, 1 row affected (0.049 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Motor = 'Suzuki'
    -> WHERE Nama = 'Amirudin';
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Motor = 'Ducati'
    -> WHERE Nama = 'Siti Maryam';
Query OK, 1 row affected (0.048 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+--------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor  |
+-------+-------------+------+----------+------------+--------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | Honda  |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | Yamaha |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 | Suzuki |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 | Ducati |
+-------+-------------+------+----------+------------+--------+
4 rows in set (0.004 sec)

MariaDB [akademik]> DELETE from Mahasiswa
    -> where Nama = 'Siti Maryam';
Query OK, 1 row affected (0.050 sec)

MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+--------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor  |
+-------+-------------+------+----------+------------+--------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | Honda  |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | Yamaha |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 | Suzuki |
+-------+-------------+------+----------+------------+--------+
3 rows in set (0.009 sec)

MariaDB [akademik]> INSERT INTO Mahasiswa VALUES
    -> ('MHS04','Siti Maryam','P','JAKARTA','1995-04-15');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [akademik]> INSERT INTO Mahasiswa (NIM,Nama,Jkl,Alamat,Tgllhr,Motor) VALUES
    -> ('MHS04','Siti Maryam','P','JAKARTA','1995-04-15');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [akademik]> INSERT INTO Mahasiswa VALUES
    -> (MHS04,'Siti Maryam','P','JAKARTA','1995-04-15');
ERROR 1054 (42S22): Unknown column 'MHS04' in 'field list'
MariaDB [akademik]> INSERT INTO Mahasiswa VALUES
    -> ('MHS04','Siti Maryam','P','JAKARTA','1995-04-15');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
MariaDB [akademik]> INSERT INTO Mahasiswa VALUES
    -> ('MHS04','Siti Maryam','P','JAKARTA','1995-04-15','Ducati');
Query OK, 1 row affected (0.049 sec)

MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+--------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor  |
+-------+-------------+------+----------+------------+--------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | Honda  |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | Yamaha |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 | Suzuki |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 | Ducati |
+-------+-------------+------+----------+------------+--------+
4 rows in set (0.004 sec)

MariaDB [akademik]> UPDATE Mahasiswa SET
    -> Motor = 'Vespa'
    -> WHERE Nama = 'Siti Maryam';
Query OK, 1 row affected (0.048 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [akademik]> select * from Mahasiswa;
+-------+-------------+------+----------+------------+--------+
| Nim   | Nama        | Jkl  | Alamat   | Tgllhr     | Motor  |
+-------+-------------+------+----------+------------+--------+
| MHS01 | Siti Aminah | P    | SOLO     | 1995-10-01 | Honda  |
| MHS02 | Rita        | P    | SOLO     | 1999-01-01 | Yamaha |
| MHS03 | Amirudin    | L    | SEMARANG | 1998-08-11 | Suzuki |
| MHS04 | Siti Maryam | P    | JAKARTA  | 1995-04-15 | Vespa  |
+-------+-------------+------+----------+------------+--------+
4 rows in set (0.001 sec)

MariaDB [akademik]> select * from Mahasiswa
    -> where Jkl = 'L';
+-------+----------+------+----------+------------+--------+
| Nim   | Nama     | Jkl  | Alamat   | Tgllhr     | Motor  |
+-------+----------+------+----------+------------+--------+
| MHS03 | Amirudin | L    | SEMARANG | 1998-08-11 | Suzuki |
+-------+----------+------+----------+------------+--------+
1 row in set (0.049 sec)

MariaDB [akademik]> select * from Mahasiswa
    -> where Jkl = 'P';
+-------+-------------+------+---------+------------+--------+
| Nim   | Nama        | Jkl  | Alamat  | Tgllhr     | Motor  |
+-------+-------------+------+---------+------------+--------+
| MHS01 | Siti Aminah | P    | SOLO    | 1995-10-01 | Honda  |
| MHS02 | Rita        | P    | SOLO    | 1999-01-01 | Yamaha |
| MHS04 | Siti Maryam | P    | JAKARTA | 1995-04-15 | Vespa  |
+-------+-------------+------+---------+------------+--------+
3 rows in set (0.004 sec)

MariaDB [akademik]> select * from Mahasiswa
    -> where Alamat = 'SOLO';
+-------+-------------+------+--------+------------+--------+
| Nim   | Nama        | Jkl  | Alamat | Tgllhr     | Motor  |
+-------+-------------+------+--------+------------+--------+
| MHS01 | Siti Aminah | P    | SOLO   | 1995-10-01 | Honda  |
| MHS02 | Rita        | P    | SOLO   | 1999-01-01 | Yamaha |
+-------+-------------+------+--------+------------+--------+
2 rows in set (0.000 sec)

MariaDB [akademik]> select * from Mahasiswa
    -> where Motor = 'Honda';
+-------+-------------+------+--------+------------+-------+
| Nim   | Nama        | Jkl  | Alamat | Tgllhr     | Motor |
+-------+-------------+------+--------+------------+-------+
| MHS01 | Siti Aminah | P    | SOLO   | 1995-10-01 | Honda |
+-------+-------------+------+--------+------------+-------+
1 row in set (0.001 sec)

MariaDB [akademik]> select * from Mahasiswa
    -> where Motor = 'Yamaha';
+-------+------+------+--------+------------+--------+
| Nim   | Nama | Jkl  | Alamat | Tgllhr     | Motor  |
+-------+------+------+--------+------------+--------+
| MHS02 | Rita | P    | SOLO   | 1999-01-01 | Yamaha |
+-------+------+------+--------+------------+--------+
1 row in set (0.001 sec)

MariaDB [akademik]> select * from Mahasiswa
    -> where Motor = 'Suzuki';
+-------+----------+------+----------+------------+--------+
| Nim   | Nama     | Jkl  | Alamat   | Tgllhr     | Motor  |
+-------+----------+------+----------+------------+--------+
| MHS03 | Amirudin | L    | SEMARANG | 1998-08-11 | Suzuki |
+-------+----------+------+----------+------------+--------+
1 row in set (0.000 sec)

MariaDB [akademik]> select * from Mahasiswa
    -> where Motor = 'Vespa';
+-------+-------------+------+---------+------------+-------+
| Nim   | Nama        | Jkl  | Alamat  | Tgllhr     | Motor |
+-------+-------------+------+---------+------------+-------+
| MHS04 | Siti Maryam | P    | JAKARTA | 1995-04-15 | Vespa |
+-------+-------------+------+---------+------------+-------+
1 row in set (0.001 sec)

MariaDB [akademik]>

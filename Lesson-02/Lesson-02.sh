mysqldump example > example.sql


#Но предварительно нужно создать базу 'mysql CREATE DATABASE sample'
mysql sample < example.sql

#дамп 100 строк mysql help_keyword
mysqldump --where="true limit 100" mysql help_keyword > help100.sql
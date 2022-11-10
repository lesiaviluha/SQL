# SQL

<h1> Шпаргалка по SQL </h1>

<p> <h3> Просмотр доступных баз данных: </h3>  SHOW DATABASES;</p>
<p> <h3> Просмотр всех таблиц, которые доступны в базе данных: </h3>  SHOW TABLES ; </p>
<p> <h3> Создание новой таблицы:</h3>
<p align=center> CREATE TABLE {table_name1} ( </p>  
                                                  <p> {col_name1} {col_type1}, </p>
  												  <p> {col_name2} {col_type2},</p>
 												  <p> {col_name3} {col_type3},</p>
  												  <p>PRIMARY KEY ({col_name1}),</p>
 		 										  <p>FOREIGN KEY ({col_name2}) REFERENCES table_name2 ({col_name2}) </p>
												  <p align=center>) ;</p>
                                                   
<p> <h3> Добавление данных в таблицу: </h3 > </p> 
<p align=center> INSERT INTO <table_name> ({col_name1}, {col_name2}, {col_name3}, …)</p>
<p align=center> VALUES ({value1}, {value2}, {value3}, …); </p>
<p> <h3> Команда для обновления данных таблицы: </h3 > </p> 
<p>  UPDATE {table_name} </p>
<p> SET {col_name1} = {value1}, {col_name2} = {value2}, ... </p>
<p> WHERE {condition}; </p>

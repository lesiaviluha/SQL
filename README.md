# SQL
Шпаргалка по SQL

Просмотр доступных баз данных - SHOW DATABASES;
Просмотр всех таблиц, которые доступны в базе данных - SHOW TABLES ;
Создание новой таблицы - CREATE TABLE <table_name1> (
  																										<col_name1><col_type1>,
  																										<col_name2><col_type2>,
 														 													<col_name3><col_type3>
  																										PRIMARY KEY(<col_name1>),
 		 																									FOREIGN KEY(<col_name2>) REFERENCES <table_name2>(<col_name2>)
																										) ;

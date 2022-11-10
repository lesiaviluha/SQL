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
<p> <h3>  Удаление данных из таблицы: </h3> </p>
<p> DELETE FROM {table_name}  </p>
<p> <h3> Удаление всей таблицы целиком: </h3> </p>
<p> DROP TABLE {table_name} </p>
<p> <h3> Команда для получения данных из выбранной таблицы: </h3> </p>
<p> SELECT {col_name1}, {col_name2}, …</p>
<p> FROM {table_name};</p>
<p> <h3>  Вывод всех данных из таблицы: </h3> </p>
<p> SELECT * FROM {table_name};</p>
<p> <h3> Вывод из таблицы только неповторяющихся данных: </h3> </p>
<p> SELECT DISTINCT {col_name1}, {col_name2}, … </p>
<p> FROM {table_name};</p>
<p> <h3> Использование ключевого слова WHERE в SELECT для указания условий в запросе:</h3> </p>
<p> SELECT {col_name1}, {col_name2}, …</p>
<p> FROM {table_name} </p>
<p> WHERE {condition}; </p>
<p> <h3> Использование оператора GROUP BY с агрегатными функциями, такими как COUNT, MAX, MIN, SUM и AVG, для группировки выходных значений. </h3> </p>
<p> SELECT {col_name1}, {col_name2}, …</p>
<p> FROM {table_name} </p>
<p> GROUP BY {col_namex}; </p>
<p> <h3> Cортировка результатов запроса по убыванию (DESC) или возрастанию (ASC). </h3> </p>
<p>SELECT {col_name1}, {col_name2}, …</p>
<p>  FROM {table_name}</p>
<p>  ORDER BY {col_name1}, {col_name2}, … ASC|DESC;</p>
<p> <h3> Выбор значений данных из определённого промежутка. Могут быть использованы числовые и текстовые значения, а также даты.</h3> </p>
<p>SELECT {col_name1}, {col_name2}, …</p>
<p>FROM {table_name} </p>
<p> WHERE {col_namex}  BETWEEN {value1} AND {value2}; </p>
<p> <h3> Оператор LIKE используется в WHERE, чтобы задать шаблон поиска похожего значения.</h3> </p>
<p>Есть два свободных оператора, которые используются в LIKE:</p>
<p> <br>  % (ни одного, один или несколько символов);</p>
<p>  _ (один символ).</p><br>
<p> SELECT {col_name1}, {col_name2}, …</p>
<p>  FROM {table_name}</p>
<p>  WHERE {col_namex} LIKE {pattern}; </p>
<p> <h3> Для связи двух или более таблиц с помощью общих атрибутов используется оператор JOIN </h3> </p>
<p> SELECT {col_name1}, {col_name2}, …</p>
<p>  FROM {table_name1} </p>
<p>  JOIN {table_name2} </p>
<p>  ON {table_name1.col_namex} = {table2.col_namex};</p>
<p> <h3> Агрегатные функции</h3> </p>
<p> COUNT(col_name) — возвращает количество строк;</p>
<p> SUM(col_name) — возвращает сумму значений в данном столбце;</p>
<p> <p> AVG(col_name) — возвращает среднее значение данного столбца;</p>
<p> MIN(col_name) — возвращает наименьшее значение данного столбца;</p>
<p> MAX(col_name) — возвращает наибольшее значение данного столбца.</p>

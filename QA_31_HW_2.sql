
#Создать таблицу employees
# -id. serial,  primary key,
# -employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name varchar(50) not null );

#Наполнить таблицу employee 70 строками.

insert into employees(employee_name) 
values										('Федоров_Денис_Константинович'),
											('Виноградова_Ярослава_Александровна'),
											('Егоров_Дмитрий_Максимович'),
											('Жуков_Дмитрий_Дмитриевич'),
											('Симонов_Антон_Игоревич'),
											('Павловский_Тимофей_Серафимович'),
											('Калачева_Анна_Мироновна'),
											('Жуков_Арсений_Михайлович'),
											('Симонова_София_Кирилловна'),
											('Худяков_Лев_Михайлови'),
											('Зиновьева_Нина_Павловна'),
											('Кириллова_Анастасия_Николаевна'),
											('Дементьева_Маргарита_Андреевна'),
											('Иванов_Максим_Даниилович'),
											('Губанова_Полина_Артёмовна'),
											('Семенов_Кирилл_Артурович'),
											('Поляков_Семён_Даниилович'),
											('Петров_Степан_Даниилович'),
											('Серебрякова_Василиса_Алиевна'),
											('Михайлова_Варвара_Ивановна'),
											('Михайлова_Фатима_Данииловна'),
											('Горшков_Кирилл_Максимович'),
											('Позднякова_Виктория_Константиновна'),
											('Федорова_София_Сергеевна'),
											('Харитонова_Александра_Михайловна'),
											('Серебряков_Илья_Романович'),
											('Бочаров_Андрей_Егорович'),
											('Марков_Кирилл_Андреевич'),
											('Бирюкова_Дарья_Алиевна'),
											('Федосеева_Валерия_Никитична'),
											('Виноградов_Иван_Владимирович'),
											('Савицкая_Марта_Михайловна'),
											('Федоров_Даниил_Матвеевич'),
											('Дубинин_Михаил_Александрович'),
											('Зиновьев_Артём_Маркович'),
											('Дементьев_Владимир_Кириллович'),
											('Соколов_Фёдор_Александрович'),
											('Бородин_Дамир_Вадимович'),
											('Королева_Ангелина_Матвеевна'),
											('Павлов_Савва_Алексеевич'),									
											('Семенова_Валерия_Львовна'),
											('Чернышева_Полина_Егоровна'),
											('Королева_Алиса_Ярославовна'),
											('Левина_Кристина_Матвеевна'),
											('Фокин_Дмитрий_Матвеевич'),
											('Соловьева_Полина_Ивановна'),
											('Рыбакова_Милана_Львовна'),
											('Галкин_Дамир_Иванович'),
											('Руднева_Валерия_Богдановна'),
											('Никифоров_Григорий_Иванович'),
											('Суханова_Ева_Игоревна'),
											('Тарасова_Мирослава_Владимировна'),
											('Хохлова_Аиша_Матвеевна'),
											('Журавлев_Артём_Константинович'),
											('Еремин_Даниил_Кириллович'),
											('Григорьев_Дмитрий_Артёмович'),
											('Комаров_Данила_Макарович'),
											('Филиппова_Дарья_Максимовна'),
											('Мельников_Михаил_Егорович'),
											('Морозов_Матвей_Андреевич'),
											('Фомина_Диана_Егоровна'),
											('Лебедева_Елизавета_Алексеевна'),
											('Прохорова_Дарья_Андреевна'),
											('Быков_Михаил_Андреевич');
#Создать таблицу salary
# -id. Serial  primary key,
# -monthly_salary. Int, not null

create table salary (
id serial primary key,
monthly_salary Int not null);


#Наполнить таблицу salary 15 строками

insert into salary (monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	

#Создать таблицу employee_salary
# -id. Serial  primary key,
# -employee_id. Int, not null, unique
# -salary_id. Int, not null
	
create table employee_salary(
				id Serial  primary key,
				employee_id Int not null unique,
				salary_id Int not null
);


#Наполнить таблицу employee_salary 40 строками:

insert into employee_salary (employee_id,salary_id)
			values (3,7),
					(1,4),
					(5,9),
					(40,13),
					(23,4),
					(11,2),
					(52,10),
					(15,13),
					(26,4),
					(16,1),
					(33,7),
					(2,4),
					(4,6),
					(6,14),
					(7,15),
					(8,2),
					(9,3),
					(12,5),
					(51,8),
					(53,11),
					(54,12),
					(55,14),
					(56,15),
					(57,1),
					(58,2),
					(59,4),
					(60,5),
					(69,14),
					(70,7),
					(61,8),
					(88,7),
					(90,9),
					(78,10),
					(75,3),
					(100,11),
					(99,14),
					(98,2),
					(97,13),
					(96,3),
					(95,2);
				
				
#Создать таблицу roles
# - id. Serial  primary key,
# - role_name. int, not null, unique	


create table roles (
 id serial  primary key,
  role_name int not null unique) ;
 
 
#Поменять тип столба role_name с int на varchar(30)
 
alter table roles
alter column role_name type varchar(30);

#Наполнить таблицу roles 20 строками

insert into roles (id, role_name)
			values  (1, 'Junior Python developer'),
					(2, 'Middle Python developer'),
					(3, 'Senior Python developer'),
					(4, 'Junior Java developer' ),
					(5, 'Middle Java developer'),
					(6, 'Senior Java developer'),
					(7,'Junior JavaScript developer'),
					(8, 'Middle JavaScript developer'),
					(9, 'Senior JavaScript developer'),
					(10, 'Junior Manual QA engineer'),
					(11, 'Middle Manual QA engineer'),
					(12, 'Senior Manual QA engineer'),
					(13, 'Project Manager'),
					(14, 'Designer'),
					(15, 'HR'),
					(16, 'CEO'),
					(17,'Sales manager'),
					(18,'Junior Automation QA engineer'),
					(19,'Middle Automation QA engineer'),
					(20,'Senior Automation QA engineer');
				
				
				
#Создать таблицу roles_employee
#- id. Serial  primary key,
#- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
#- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
				
create table roles_employee(
id serial  primary key,
employee_id Int not null unique,
role_id Int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id) 
);



#Наполнить таблицу roles_employee 40 строками

insert into roles_employee (employee_id,role_id )
	values  (7,2), 
			(20,4),
			(3,9),
			(5,13),
			(23,4),
			(11,2),
			(10,9),
			(22,13),
			(21,3),
			(34,4),
			(38,7),
			(1,20),
			(69,19),
			(2,18),
			(4,17),
			(39,16),
			(6,15),
			(37,14),
			(9,13),
			(36,12),
			(35,11),
			(65,10),
			(64,9),
			(60,8),
			(59,7),
			(58,6),
			(15,1),
			(55,9),
			(54,2),
			(50,1),
			(49,14),
			(48,18),
			(47,3),
			(16,1),
			(46,16),
			(45,9),
			(44,19),
			(33,1),
			(42,14),
			(40,2);
			
		
#Вывести все данные из таблицы employees
select * from employees ;

#Вывести все данные из таблицы salary
select * from salary ;

#Вывести все данные из таблицы employee_salary
select * from employee_salary  ;

#Вывести все данные из таблицы roles
select * from roles;

#Вывести все данные из таблицы roles_employee
select * from roles_employee;
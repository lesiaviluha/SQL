

-- Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.employee_name , salary.monthly_salary 
from employees join  salary 
on employees.id =salary.id;


-- Вывести всех работников у которых ЗП меньше 2000.

 select employees.employee_name, salary.monthly_salary 
 from employees join salary 
 on employees.id= salary.id
where monthly_salary < 2000;
 

 
 --Найти всех работников кому не начислена ЗП.
 
 select e.employee_name
 from employees e join salary s  on e.id = s.id 
 where s.monthly_salary is null ;


 
 --Вывести всех работников с названиями их должности.
 
 select employees.employee_name , roles.role_name 
 from employees join roles  on employees.id =roles.id ;

--Вывести имена и должность только Java разработчиков.
 select employee_name, role_name
 from employees full join roles 
 on employees.id = roles.id 
where role_name like '%Java developer%';

 --Вывести имена и должность только Python разработчиков.
 
  select employee_name, role_name
 from employees full join roles 
 on employees.id = roles.id 
where role_name like '%Python developer%';


--Вывести имена и должность всех QA инженеров.
 
select employee_name, role_name
from employees full join roles 
on employees.id = roles.id 
where role_name like '%QA%';
 
-- Вывести имена и должность ручных QA инженеров.
 
  select employee_name, role_name
 from employees full join roles 
 on employees.id = roles.id 
where role_name like '%Manual QA%';


-- Вывести имена и должность автоматизаторов QA
 
  select employee_name, role_name
 from employees full join roles 
 on employees.id = roles.id 
where role_name like '%Automation%';


-- Вывести имена и зарплаты Junior специалистов
 
  select employee_name, monthly_salary
 from employees full join salary  
 on employees.id = salary.id 
 join roles 
 on employees.id = roles.id 
where role_name like '%Junior%';
 
-- Вывести имена и зарплаты Middle специалистов
 
  select employee_name, monthly_salary
 from employees full join salary  
 on employees.id = salary.id 
 join roles 
 on employees.id = roles.id 
where role_name like '%Middle%';
 
-- Вывести имена и зарплаты Senior специалистов
 
  select employee_name, monthly_salary
 from employees full join salary  
 on employees.id = salary.id 
 join roles 
 on employees.id = roles.id 
where role_name like '%Senior%';


-- Вывести зарплаты Java разработчиков
 
 select monthly_salary
 from employees full join salary  
 on employees.id = salary.id 
 join roles 
 on employees.id = roles.id 
where role_name like '%Java developer%';
 
-- Вывести зарплаты Python разработчиков
 
 select  monthly_salary
 from employees full join salary  
 on employees.id = salary.id 
 join roles 
 on employees.id = roles.id 
where role_name like '%Python developer%';

-- Вывести имена и зарплаты Junior Python разработчиков
 
 select employee_name, monthly_salary
 from employees full join salary  
 on employees.id = salary.id 
 join roles 
 on employees.id = roles.id 
where role_name like '%Junior Python developer%';


-- Вывести имена и зарплаты Middle JS разработчиков
 
 select employee_name, monthly_salary
 from employees full join salary  
 on employees.id = salary.id 
 join roles 
 on employees.id = roles.id 
where role_name like '%Middle JavaScript developer%';
 
-- Вывести имена и зарплаты Senior Java разработчиков
 
 select employee_name, monthly_salary
 from employees full join salary  
 on employees.id = salary.id 
 join roles 
 on employees.id = roles.id 
where role_name like '%Senior Java developer%';
 
-- Вывести зарплаты Junior QA инженеров
 
 select  monthly_salary
 from employees full join salary  
 on employees.id = salary.id 
 join roles 
 on employees.id = roles.id 
where role_name like '%Junior%QA%';
 
-- Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary)
from salary join roles 
on salary.id = roles.id 
where role_name like '%Junior%';

 
-- Вывести сумму зарплат JS разработчиков
 
 select sum(monthly_salary)
from salary join roles 
on salary.id = roles.id 
where role_name like '%JavaScript developer%';


-- Вывести минимальную ЗП QA инженеров
 
 select min (monthly_salary)
from salary join roles 
on salary.id = roles.id 
where role_name like '%QA%';


-- Вывести максимальную ЗП QA инженеров
 
 select max(monthly_salary)
from salary join roles 
on salary.id = roles.id 
where role_name like '%QA%';
 
 
-- Вывести количество QA инженеров
 
 select count(role_name) from roles where role_name like '%QA%';
 
-- Вывести количество Middle специалистов.

select count(role_name) from roles where role_name like '%Middle%';

-- Вывести количество разработчиков
 select count(role_name) from roles where role_name like '%developer%'; 


-- Вывести фонд (сумму) зарплаты разработчиков.

 select sum(monthly_salary)
from salary join roles 
on salary.id = roles.id 
where role_name like '%developer%'; 

-- Вывести имена, должности и ЗП всех специалистов по возрастанию
 
 select employee_name, role_name, monthly_salary
 from employees full join roles 
 on employees.id = roles.id 
 join salary 
 on salary.id = employees.id
order by monthly_salary asc ;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 select employee_name, role_name, monthly_salary
 from employees full join roles 
 on employees.id = roles.id 
 join salary 
 on salary.id = employees.id
where monthly_salary between 1700 and 2300
order by monthly_salary asc ;


-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 
 select employee_name, role_name, monthly_salary
 from employees full join roles 
 on employees.id = roles.id 
 join salary 
 on salary.id = employees.id
where monthly_salary<2300
order by monthly_salary asc ;

-- Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 select employee_name, role_name, monthly_salary
 from employees full join roles 
 on employees.id = roles.id 
 join salary 
 on salary.id = employees.id
where monthly_salary = 1100  or monthly_salary =1500 or  monthly_salary =2000
order by monthly_salary asc ;
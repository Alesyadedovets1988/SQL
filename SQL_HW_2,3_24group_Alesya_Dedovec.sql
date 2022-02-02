--Таблица employees
	
--1) Создать таблицу employees
---id serial, primary key,
---employee_name. Varchar(50), not null
create table employees (
	id serial primary key,
	employee_name varchar(50) not null
	);
select*from employees;
--2) Наполнить таблицу emploees 70 строками
insert into employees(employee_name)
values('Andrew Smith'), 
	('Harry Dark'),
	('Anne Garold'),
	('Jane Simson'),
	('Addinson Cavanni'),
	('Sergio Ramos'),
	('Cristiano Ronaldo'),
	('Tade Jackson'),
	('Olivia Strike'),
	('Elena Marco'),
	('Natali Romano'),
	('Jack Rassel'),
	('Rozalia Jonson'),
	('Andy Brown'),
	('Olivia Rose'),
	('Richard Oushen'),
	('Dave Brown'),
	('Sintia Jonson'),
	('Roman Order'),
	('Marcello'),
	('Jack Rollson'),
	('Rose Rodrigues'),
	('Lily Rimes'),
	('Anna Dark'),
	('Jerry Janes'),
	('Harry Fellon'),
	('Jonny Red'),
	('Sasha Yellow'),
	('Elisabeth Rollin'),
	('Rick Pouell'),
	('Dan Back'),
	('Sintia Smith'),
	('Geronimo Fellini'),
	('Selena Four'),
	('Edward Purple'),
	('Andy Garsia'),
	('Robert Hill'),
	('Edward Tomphson'),
	('Natalia Black'),
	('Adam Davis'),
	('Olivia Nil'),
	('John Walker'),
	('Derrel Young'),
	('Jane King'),
	('Sofia Wilson'),
	('Sharlotta Parson'),
	('Mary Jones'),
	('Charlse Gordon'),
	('Leo Kuk'),
	('Antony Linch'),
	('Vincent Daniels'),
	('Carol Armstrong'),
	('JeanCox'),
	('Christal Gregory'),
	('Flora Burke'),
	('Antonia Walton'),
	('Kevin Webster'),
	('Edward Taylor'),
	('Douglas McKinney'),
	('Robert Simth'),
	('Jasper Farmer'),
	('Jacob Ball'),
	('Francis Morris'),
	('Peter Bond'),
	('Joshua Griffith'),
	('Peter Bishop'),
	('Anthony Price'),
	('James Shepherd'),
	('John Morrison'),
	('Ethan Fleming');
	

select*from employees;

	--Таблица salary
--3) Создать таблицу salary1
---id serial, primary key,
---monthly salary.Int, not null
create table salary1 (
	id serial primary key,
	monthly_salary int not null
	);
select*from salary1;
--4) Наполнить таблицу salary1 15 строками:
insert into salary1(monthly_salary)
values
    (1000),
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
	(2500),
	(10000),
     (800),
     (900),
    (1000),
    (800);
select*from salary1;

	--Таблица employees_salary1
--5)Создать таблицу employees_salary1
--id. Serial primary key
--employee_id. Int, not null
create table employees_salary1 (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
	);
select*from employees_salary1;

--6)Наполнить таблицу employees_salary1 40 ñòðîêàìè:
---â 10 ñòðîê èç 40 âñòàâèòü íåñóùåñòâóþùèå employee_id
insert into employees_salary1(employee_id,salary_id)
values (3,7),
	(1,7),
	(2,4),
	(31,9),
	(4,13),
	(5,4),
	(6,2),
	(7,10),
	(8,13),
	(9,4),
	(10,1),
	(11,7),
	(12,16),
	(13,14),
	(14,12),
	(15,14),
	(16,1),
	(17,8),
	(18,10),
	(19,5),
	(20,6),
	(21,2),
	(22,6),
	(23,11),
	(24,5),
	(25,3),
	(26,2),
	(27,12),
	(28,2),
	(29,1),
	(30,12),
	(71,15),
	(72,14),
	(73,16),
	(74,11),
	(75,7),
	(76,5),
	(77,4),
	(78,9),
	(79,10),
	(80,8);

select*from employees_salary1;	

--7) Таблица roles
---id serial primary key,
---role_name.int, not null unique
create  table roles (
 id serial primary key,
 role_name int not null unique
);
select*from roles;
---8)Поменять тип столбца role_name с role_name на varchar(30)
alter table roles 
alter column role_name type varchar(30);

--9)Наполнить таблицу roles 20 строками
insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');
	select*from roles;
--10)Создать таблицу roles_employee
--- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
	);
select*from roles_employee;

--11)Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id,role_id)
values(7,2),
(20,4),
(3,9),
(5,13),
(23,4),
(11,2),
(10,9),
(22,13),
(21,3),
(34,4),
(6,7),
(1,17),
(2,14),
(4,16),
(8,16),
(9,4),
(12,14),
(13,17),
(14,5),
(15,7),
(16,19),
(17,11),
(18,7),
(19,12),
(24,8),
(25,9),
(26,20),
(27,5),
(28,6),
(29,12),
(30,14),
(31,20),
(32,02),
(33,7),
(35,9),
(36,11),
(37,20),
(38,1),
(39,5),
(40,6);
select*from roles_employee;

select*from employees_salary1 inner join employees on employees_salary1.employee_id=employees.id;	
	
	--SQL HomeWork 3. Joins

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary from employees join salary1 on employees.id=salary1.id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary from employees join salary1 on employees.id=salary1.id
where monthly_salary < 2000;
	
--3.Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary,employee_name from salary1 left join employees on salary1.id=employees.id; 

--4.Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary,employee_name from salary1 left join employees on salary1.id=employees.id where employee_name is null and monthly_salary<2000;

--5.Найти всех работников кому не начислена ЗП
select monthly_salary,employee_name from salary1 right join employees on salary1.id=employees.id where monthly_salary is null;

--6.Вывести всех работников с названиями их должности
select employee_name, role_name from employees join roles on employees.id=roles.id;

--7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name from employees join roles on employees.id=roles.id where role_name like '%Java %';

--8.Вывести имена и должность только Python разработчиков
select employee_name, role_name from employees join roles on employees.id=roles.id where role_name like '%Python%';

--9.Вывести имена и должность всех QA инженеров
select employee_name, role_name from employees join roles on employees.id=roles.id where role_name like '%QA%';

--10.Вывести имена и должность ручных QA инженеров
select employee_name, role_name from employees join roles on employees.id=roles.id where role_name like '%Manual QA%';

--11.Вывести имена и должность автоматизаторов QA
select employee_name, role_name from employees join roles on employees.id=roles.id where role_name like '%Automation QA%';

--12.Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary,role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join salary1 on salary1.id = roles.id
where role_name like '%Junior%';

--13.Вывести имена и зарплаты Middle специалистов	
select employee_name, monthly_salary,role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join salary1 on salary1.id = roles.id
where role_name like '%Middle%';

--14.Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary,role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join salary1 on salary1.id = roles.id
where role_name like '%Senior%';

--15.Вывести зарплаты Java разработчиков
select monthly_salary,role_name
from roles join salary1 on salary1.id = roles.id
where role_name like '%Java %';

--16.Вывести зарплаты Python разработчиков
select monthly_salary,role_name
from roles join salary1 on salary1.id = roles.id
where role_name like '%Python%';

--17.Вывести имена и зарплаты Junior Python разработчиков
select employee_name, monthly_salary,role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join salary1 on salary1.id = roles.id
where role_name like '%Junior Python%';

--18.Вывести имена и зарплаты Middle JS разработчиков
select employee_name, monthly_salary,role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join salary1 on salary1.id = roles.id
where role_name like '%Middle JavaScript%';

--19.Вывести имена и зарплаты Senior Java разработчиков
select employee_name, monthly_salary,role_name
	from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join salary1 on salary1.id = roles.id
where role_name like '%Senior Java %';

--20.Вывести зарплаты Junior QA инженеров
select monthly_salary,role_name
from roles join salary1 on salary1.id = roles.id
where role_name like '%Junior %QA%';

--21.Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) as avg_salary_junior
from roles join salary1 on salary1.id = roles.id
where role_name like '%Junior%';

--22.Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) as sum_salary_java_script
from roles join salary1 on salary1.id = roles.id
where role_name like '%JavaScript%';

--23.Вывести минимальную ЗП QA инженеров
select min(monthly_salary) as min_salary_QA
from roles join salary1 on salary1.id = roles.id
where role_name like '%QA%';

--24.Вывести максимальную ЗП QA инженеров
select max(monthly_salary) as max_salary_QA
from roles join salary1 on salary1.id = roles.id
where role_name like '%QA%';

--25.Вывести количество QA инженеров
select count(role_name) as count_QA from roles
where role_name like '%QA%';

--26.Вывести количество Middle специалистов
select count(role_name) as count_Middle from roles r where role_name like '%Middle%';

--27.Вывести количество разработчиков
select count(role_name) as count_dev from roles r where role_name like '%developer%';

--28.Вывести фонд (сумму) зарплаты разработчиков
select sum(monthly_salary) as sum_salary_java_script
from roles join salary1 on salary1.id = roles.id
where role_name like '%developer%';

--29.Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary 
from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join salary1 on salary1.id = roles.id
	order by monthly_salary;
	
--30.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary 
from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join salary1 on salary1.id = roles.id
	where monthly_salary >= '1700' and  monthly_salary <= '2300'
	order by monthly_salary;
	
--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary 
from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join salary1 on salary1.id = roles.id
	where monthly_salary < 2300
	order by monthly_salary;
	
--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary 
from roles_employee 
	join roles on roles.id = roles_employee.role_id
	join employees on employees.id = roles_employee.employee_id
	join salary1 on salary1.id = roles.id
	where monthly_salary in (1100,1500,2000)
	order by monthly_salary;

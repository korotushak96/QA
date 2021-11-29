--Создать таблицу employees 
--id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

--Наполнить таблицу employee 70 строками.
insert into employees(employee_name)
values ('John_1'),
	('John_2'),
	('John_3'),
	('John_4'),
	('John_5'),
	('John_6'),
	('John_7'),
	('John_8'),
	('John_9'),
	('Ann'),
	('Ivan_1'),
	('Ivan_2'),
	('Ivan_3'),
	('Ivan_4'),
	('Ivan_5'),
	('Ivan_6'),
	('Ivan_7'),
	('Ivan_8'),
	('Ivan_9'),
	('Petro'),
	('Nina_1'),
	('Nina_2'),
	('Nina_3'),
	('Nina_4'),
	('Nina_5'),
	('Nina_6'),
	('Nina_7'),
	('Nina_8'),
	('Nina_9'),
	('Nelia'),
	('Inna_1'),
	('Inna_2'),
	('Inna_3'),
	('Inna_4'),
	('Inna_5'),
	('Inna_6'),
	('Inna_7'),
	('Inna_8'),
	('Inna_9'),
	('Larysa'),
	('Vadym_1'),
	('Vadym_2'),
	('Vadym_3'),
	('Vadym_4'),
	('Vadym_5'),
	('Vadym_6'),
	('Vadym_7'),
	('Vadym_8'),
	('Vadym_9'),
	('Vitaliy'),
	('Pavlo_1'),
	('Pavlo_2'),
	('Pavlo_3'),
	('Pavlo_4'),
	('Pavlo_5'),
	('Pavlo_6'),
	('Pavlo_7'),
	('Pavlo_8'),
	('Pavlo_9'),
	('Natalia'),
	('Tanya_1'),
	('Tanya_2'),
	('Tanya_3'),
	('Tanya_4'),
	('Tanya_5'),
	('Tanya_6'),
	('Tanya_7'),
	('Tanya_8'),
	('Tanya_9'),
	('Lubomyr');

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);

--Наполнить таблицу salary 16 строками

insert into salary(monthly_salary)
values (1000),
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

--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	emplyoee_id int not null unique,
	salary_id int not null
);

alter table employee_salary rename column "emplyoee_id" to "employee_id";

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (1,3),
	(2,3),
	(3,4),
	(4,1),
	(5,6),
	(6,5),
	(7,8),
	(8,9),
	(9,1),
	(75,15),
	(91,9),
	(12,12),
	(13,13),
	(14,11),
	(15,13),
	(16,4),
	(17,1),
	(18,3),
	(19,9),
	(80,1),
	(21,1),
	(23,13),
	(84,11),
	(25,13),
	(26,10),
	(27,14),
	(28,9),
	(29,7),
	(94,1),
	(31,1),
	(82,12),
	(33,14),
	(34,12),
	(35,14),
	(36,13),
	(95,5),
	(90,10),
	(99,5),
	(96,14);

--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles 
alter column role_name type varchar(50);

--Наполнить таблицу roles 20 строками:

insert into roles(role_name)
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

--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)	
);

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id, role_id)
values (1,3),
	(2,3),
	(3,4),
	(4,1),
	(5,6),
	(6,5),
	(7,8),
	(8,9),
	(9,1),
	(70,15),
	(61,9),
	(12,12),
	(13,13),
	(14,11),
	(15,13),
	(16,4),
	(17,1),
	(18,3),
	(19,9),
	(50,1),
	(21,1),
	(23,13),
	(54,11),
	(25,13),
	(26,10),
	(27,14),
	(28,9),
	(29,7),
	(44,1),
	(31,1),
	(42,12),
	(33,14),
	(34,12),
	(35,14),
	(66,13),
	(65,5),
	(40,10),
	(39,5),
	(36,14);


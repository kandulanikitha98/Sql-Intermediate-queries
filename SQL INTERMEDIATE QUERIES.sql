#1.Query all rows from Department table?
select * from departmenttb;
#2.Change the name of department with id = 1 to 'Management'?
update  departmenttb set name='Management' where id=1;
#3.Delete employees with salary greater than 100000?
delete from employeetable where salary >100000;
#4.Query the names of companies?
select distinct(name) from companytb;
#5.Query the name and city of every employee?
select name,city from employeetable;
#6.Query all companies with revenue greater than 5000000?
select distinct(name),revenue from companytb where revenue>5000000;
#7.Query all companies with revenue smaller than 5000000?
select distinct(name) from companytb where revenue<5000000;
#8.Query all companies with revenue smaller than 5000000, but you cannot use the '<' operator?
select distinct(name) from companytb where revenue  between 0 and 4999999;
#9.Query all employees with salary greater than 50000 and smaller than 70000?
select name,salary  from employeetable where salary >50000 and salary <70000;
#10.Query all employees with salary greater than 50 000 and smaller than 70 000, but you cannot use BETWEEN?
select name,salary from employeetable where salary > 50000 and salary <70000;
#11.Query all employees with salary equal to 80000?
select name,salary from employeetable where salary=80000;
#12.Query all employees with salary not equal to 80000?
select name,salary from employeetable where salary != 80000;
#13.Query all departments (each name only once)?
select distinct(name) from departmenttb;
#14.Query names of all employees together with id of department they work in, but you cannot use JOIN?
select (id)dept_id,name from employeetable;
#15.Query names of all employees together with id of department they work in, using JOIN?
select a.name ,b.id department_id  from employeetable a inner join departmenttb b on a.id=b.id;
#16.Query name of every company together with every department?
select a.name company_name ,b.name  department_name from companytb a cross join departmenttb b ;
#17.Query employee name together with the department name that they are not working?
SELECT a.name AS employee_name,b.name AS department_name FROM employeetable a CROSS JOIN departmenttb b
WHERE a.id <> b.id;
#18.Query names of every company and change the name of column to 'Company'?
select distinct(name)company from companytb;
#19.query city wise salary?
select city,sum(salary)salary from employeetable group by city ;
#20.Highest revenue company name
select name,max(revenue) from companytb group by name order by max(revenue) desc limit 1;
#or
select name,revenue from(select name ,revenue,row_number() over(order by revenue desc)max_revenue from companytb)a where max_revenue =1;

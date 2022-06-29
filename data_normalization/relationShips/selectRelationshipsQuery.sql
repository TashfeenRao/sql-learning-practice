
-- # which employees are in building no 3

select e.first_name, t.name, cb.name from employees as e
inner join teams t on t.id = e.team_id
inner join company_buildings cb on cb.id = t.building_id
where cb.id = 3

-- select all the employees that are part of some team. 

select e.first_name, t.name from employees as e
LEFT JOIN teams t on t.id = e.team_id

-- select all the employees that are part of team 2 

select e.first_name, t.name from employees as e
LEFT JOIN teams t on t.id = e.team_id
where t.id = 2


--  select all employees even WITHOUT projects & with their projects name 

-- employees with projects
select e.first_name, p.name from employees as e
INNER JOIN employee_projects as ep ON employee_id = e.id 
LEFT JOIN projects as p ON p.id = ep.project_id;

-- -- all employees with or WITHOUT projects
select e.first_name, p.name from employees as e
LEFT JOIN employee_projects as ep ON employee_id = e.id 
LEFT JOIN projects as p ON p.id = ep.project_id;
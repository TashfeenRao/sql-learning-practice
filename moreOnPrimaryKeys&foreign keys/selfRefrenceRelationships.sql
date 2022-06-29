
CREATE TABLE employees (
    id int PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(200),
    last_name varchar(200),
    superviser_id int REFERENCES employees (id)
);

insert into employees
    (first_name, last_name, address, supervisor_id)
VALUES
('tash','rao', 'okara', 1),
('umair','khan', 'lhr', 4),
('ahsan','ch', 'lhr', 1),
('yoni','is', 'israel', NULL);

select * from employees as e1
inner join employees as e2 on e2.supervisor_id = e1.id
INSERT INTO company_buildings (name)
VALUES 
('management block'),
('IT building'),
('R&D department');

INSERT INTO teams (name, building_id)
VALUES 
('product team', 1),
('engineering team', 2),
('r&d team', 3);

INSERT INTO employees (first_name, last_name, email, team_id)
VALUES
('tash', 'rao', 'tash@email.com'),
('manan', 'ch', 'manan@email.com', 2),
('ahsan', 'pk', 'ahsan@email.com', 3),
('umair', 'khan', 'umair@email.com', 2);

INSERT INTO internet_accounts (email)
VALUES
('tash@email.com'),
('ahsan@email.com'),
('manan@email.com');

INSERT INTO projects (name,deadline)
VALUES 
('ricult web', NULL),
('ricult agent app', 2023),
('ricult farmer app', 2022);


INSERT INTO employee_projects (employee_id, project_id)
VALUES  
(5,1),
(5,2),
(6,2),
(7,3);

create TABLE company_buildings (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(200)
);

create TABLE teams (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name varchar(200) NOT NULL,
    building_id int,
    FOREIGN key  (building_id) REFERENCES company_buildings (id) ON DELETE SET NULL
);

CREATE TABLE projects (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(300) NOT NULL,
    deadline varchar(200)
);

create TABLE employees (
    id int PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(200) NOT NULL,
    last_name varchar(200) NOT NULL,
    email varchar(300) UNIQUE NOT NULL,
    team_id int DEFAULT 1,
    FOREIGN key (team_id) REFERENCES teams (id) ON DELETE SET DEFAULT
);

create table internet_accounts (
    id int PRIMARY KEY AUTO_INCREMENT,
    email varchar(300) NOT NULL,
    FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE
);

CREATE TABLE employee_projects (
    id int PRIMARY KEY AUTO_INCREMENT,
    employee_id int,
    project_id int,
    FOREIGN key (employee_id) REFERENCES employees (id) ON DELETE CASCADE,
    FOREIGN key (project_id) REFERENCES projects (id) ON DELETE CASCADE
);
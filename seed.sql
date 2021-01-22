USE employees_db;

INSERT INTO department (name)
VALUES
('Office'),
('Food Service'),
('Retail')
('Custodial')
('Operations'),
('Terrain'),
('Security'),
('Management');

SELECT * FROM department;

INSERT INTO role (title, salary, department_id)
VALUES
('Ticket Sales', '28000.00', 1),
('Lodge Cat', '00009.00', 1),
('E-Lodge Cook', '33000.00', 2),
('Line Cook', '24000.00', 2),
('Retail', '25000.00', 3),
('Custodial', '30000.00', 4),
('Lift Operator', '27000.00', 5),
('Operations Lead', '34000.00', 5),
('Terrain Park Attendant', '28000.00', 6),
('SnowCAT Driver', '55000.00', 6),
('Security', '35000.00', 7),
('Office Manager', '36000.00', 8),
('Kitchen Manager', '38000.00', 8),
('Shop Manager', '33000.00', 8)
('Operations Manager', '38000.00', 8),
('General Manager', '62000.00', 8);

SELECT * FROM role;

INSERT INTO employee (first_name, last_name, role_id)
VALUES

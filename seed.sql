INSERT INTO department (name)
VALUES
('Office'),
('Front of House'),
('Back of House'),
('Brewers'),
('Custodial');

INSERT INTO role (title, salary, department_id)
VALUES
('Admin', '45000.00', 1),
('Admin Cat', '00009.00', 1),
('Host', '24000.00', 2),
('Busser', '25000.00', 2),
('Server', '31000.00', 2),
('Bartender', '37000.00', 2),
('FoH Manager', '47000.00', 2),
('Dish Pit', '27000.00', 3),
('Prep Cook', '28000.00', 3),
('Line Cook', '29000.00', 3),
('Line Lead', '32000.00', 3),
('Head Chef', '57000.00', 3),
('Brewer', '33000.00', 4),
('Head Brewer', '46000.00', 4),
('Deep Cleaners', '33000.00', 5);

INSERT INTO employee (first_name, last_name, role_id)
VALUES
('Space', 'Ghost', 12),
('Zorak', 'Mantis', 7),
('Moltar', 'Coast', 14);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
('Moltar', 'Coastal', 1, 1),
('Scrilla', 'the Cat', 2, 2),
('Brak', 'Coast', 4, 1),
('Chad', 'Ghostal',5, 1),
('Creature', 'King', 6, 1),
('Sisto', 'Coast', 8, 1),
('Gorilla', 'Gorilla', 9, 1),
('Marky', 'Mark', 10, 1),
('John', 'Mohr', 11, 1),
('Tyler','Creator',13, 3),
('Michael','Jordan',15, 1);

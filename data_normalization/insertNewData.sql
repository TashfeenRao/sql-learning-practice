

INSERT INTO cities (name)
VALUES ('Lahore'),
       ('New York'),
       ('Berlin'),
       ('Paris');

INSERT INTO address (house_no, street, city_id) 
VALUES 
        ('7x', 'main', 1),
        ('116B', 'round about', 2),
        ('127A', '4', 4),
        ('444', '4th floor', 3),
        ('21d', '4th floor', 3),
        ('dsw', '2 floor', 3),
        ('wsd', '43h floor', 3);

INSERT INTO users (first_name, last_name, email, address_id) 
VALUES 
        ('tash', 'feen', 'tash@gmail.com', 1),
        ('usam', 'aa', 'tash1@gmail.com', 4),
        ('zeeshi', 'aann', 'tash2@gmail.com', 2),
        ('manan', 'ch', 'tash3@gmail.com', 3);
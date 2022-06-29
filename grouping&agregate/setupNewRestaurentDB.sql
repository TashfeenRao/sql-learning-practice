create database restaurents;
create TABLE payment_method (
    id int PRIMARY KEY auto_increment,
    name varchar(300) not null
);
create TABLE tables (
    id int,
    num_seats int NOT NULL,
    category varchar(300) NOT NULL
);
create TABLE bookings(
    id int PRIMARY KEY auto_increment,
    booking_date date DEFAULT (CURRENT_DATE),
    billed decimal not null,
    tipped int,
    table_id int REFERENCES tables(id),
    payment_id int REFERENCES payment_method (id)
);
insert INTO payment_method (name)
VALUES('cash'),
    ('credit');
insert INTO tables (num_seats, category)
VALUES(4, 'group'),
    (2, 'couple'),
    (6, 'family'),
    (12, 'family-extra');
insert INTO bookings (
        booking_date,
        billed,
        tipped,
        table_id,
        payment_id
    )
VALUES(
        '2022-07-20',
        233212.2,
        3000,
        3,
        1
    ),
    (
        '2022-07-12',
        4323.2,
        200,
        4,
        1
    ),
    (
        '2022-07-20',
        2332.2,
        NUll,
        3,
        1
    ),
    (
        '2022-07-24',
        2332.2,
        300,
        1,
        1
    ),
    (
        '2022-07-20',
        9022.2332,
        600,
        1,
        1
    ),
    (
        '2022-07-21',
        2332.2,
        300,
        3,
        2
    ),
    (
        '2022-07-22',
        3312.2,
        300,
        2,
        2
    );
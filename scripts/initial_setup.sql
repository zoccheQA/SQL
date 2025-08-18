CREATE DATABASE BookStore;
USE BookStore;

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150),
    author_first_name VARCHAR(100),
    author_last_name VARCHAR(100),
    year_published INT,
    quantity_in_stock INT,
    total_pages INT
);

INSERT INTO books (title, author_first_name, author_last_name, year_published, quantity_in_stock, total_pages)
VALUES
('The Silent Reader', 'Laura', 'Reed', 2002, 45, 312),
('Echoes of the North', 'Mikael', 'Jonsson', 2015, 30, 280),
('Shadows and Tales', 'Laura', 'Reed', 1999, 60, 198),
('Waves of Solitude', 'Daniel', 'Shaw', 2011, 27, 366),
('Beyond the Circle', 'Daniel', 'Shaw', 2014, 39, 410),
('Memory Lane', 'Julia', 'Klein', 2007, 52, 295),
('Fragments of Sky', 'Tom', 'Simmons', 2001, 18, 430),
('Dust and Dreams', 'Nina', 'Park', 1997, 65, 214),
('Mirrored Souls', 'Tom', 'Simmons', 2005, 25, 356),
('The Forgotten Path', 'Mikael', 'Jonsson', 2003, 88, 298);

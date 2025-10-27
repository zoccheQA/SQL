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


-- nova table criada para conseguirmos usar A Função JOIN
CREATE TABLE sales (
  sale_id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT,
  sale_date DATE,
  quantity_sold INT,
  FOREIGN KEY (book_id) REFERENCES books(id)
);

INSERT INTO sales (book_id, sale_date, quantity_sold) VALUES
(1, '2024-02-15', 10),
(2, '2024-02-20', 5),
(3, '2024-02-21', 8),
(5, '2024-02-25', 15),
(7, '2024-03-01', 3);


-- Duplicados EXATOS de títulos já existentes
INSERT INTO books (title, author_first_name, author_last_name, year_published, quantity_in_stock, total_pages) VALUES
('Shadows and Tales', 'Laura',  'Reed',    1999, 60, 198),
('Echoes of the North', 'Mikael', 'Jonsson', 2015, 30, 280);

-- Mesmos livros, mas com variações de espaço/letra maiúscula
INSERT INTO books (title, author_first_name, author_last_name, year_published, quantity_in_stock, total_pages) VALUES
('Shadows and Tales ', 'Laura',  'Reed',    1999, 60, 198),   -- espaço no final do título
('echoes of the north', 'Mikael', 'JONSSON', 2015, 30, 280);  -- case diferente

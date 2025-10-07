SELECT id, title, author_first_name, author_last_name, quantity_in_stock
FROM books
WHERE quantity_in_stock = 0;


-- Query do resultado do desafio
SELECT b.id, b.title, b.author_first_name, b.author_last_name,
       b.quantity_in_stock, s.sale_date, s.quantity_sold
FROM books b
INNER JOIN sales s ON b.id = s.book_id
WHERE b.quantity_in_stock = 0;


SELECT 
 b.id,
 b.title,
 s.sale_id
FROM books b
LEFT JOIN sales s ON b.id = s.book_id
WHERE s.sale_id IS NULL;
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


SELECT
  title, author_first_name, author_last_name,
  COUNT(*) AS duplicates
FROM books
GROUP BY title, author_first_name, author_last_name
HAVING COUNT(*) > 1;


SELECT
  LOWER(TRIM(title))              AS norm_title,
  LOWER(TRIM(author_first_name))  AS norm_author_first,
  LOWER(TRIM(author_last_name))   AS norm_author_last,
  COUNT(*) AS duplicates
FROM books
GROUP BY norm_title, norm_author_first, norm_author_last
HAVING COUNT(*) > 1;

SELECT 
  COUNT(*) AS total_books,
  SUM(quantity_in_stock) AS total_stock,
  AVG(quantity_in_stock) AS average_stock,
  MAX(quantity_in_stock) AS highest_stock,
  MIN(quantity_in_stock) AS lowest_stock
FROM books;

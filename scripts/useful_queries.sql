SELECT id, title, author_first_name, author_last_name, quantity_in_stock
FROM books
WHERE quantity_in_stock = 0;
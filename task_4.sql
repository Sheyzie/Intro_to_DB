-- Print the full description of the table `books` in the specified database
-- mysql -u username -p alx_book_store < task_4.sql

SELECT 
    COLUMN_NAME, 
    COLUMN_TYPE, 
    IS_NULLABLE, 
    COLUMN_KEY, 
    COLUMN_DEFAULT, 
    EXTRA
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()
AND TABLE_NAME = 'books'
ORDER BY ORDINAL_POSITION;
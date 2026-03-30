-- TASK 1
SELECT SUM(price * stock)
FROM books;

-- TASK 2
SELECT
  genre,
  COUNT(*) AS count
FROM
  books
GROUP BY
  genre
ORDER BY 2 DESC;

-- TASK 3
ALTER TABLE books
ADD COLUMN new_price;
UPDATE books
SET new_price = price - (.1 * price)
WHERE publication_year < 1950;
SELECT title, new_price, price 
FROM books
WHERE publication_year < 1950;

-- TASK 4
SELECT title, author, genre, price
FROM books
WHERE genre = 'Fiction'
OR price < 12;

-- TASK 5
SELECT title, stock, CASE WHEN stock > 10 THEN stock END AS number_of_days
FROM books
WHERE stock > 10
ORDER BY 3 DESC;

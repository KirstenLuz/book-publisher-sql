# SQL Exercises — Book System

## Basic Selection and Filters

1. List all registered books.  
   → Show only `book_title` and `publication_date`.

2. List only the names and birth dates of authors born before 1950.

3. Show the title and genre of all books.  
   (Hint: use `JOIN` with `genres`)

4. List all female readers (`F`).

5. Show all books published after the year 2000.  
   (Hint: use `EXTRACT(YEAR FROM publication_date)`)

## Joins and Multiple Tables

6. List the book titles and the names of their respective authors.  
   (Use `JOIN` between `books`, `books_authors`, and `authors`)

7. List the reader names and the titles of the books they reviewed.  
   (Hint: `JOIN` between `reviews`, `books`, and `readers`)

8. Show the names of authors and the total number of books each has written.  
   (Use `COUNT` and `GROUP BY`)

9. List the books with the number of reviews received (both anonymous and identified).  
   (Use `LEFT JOIN` between `books` and `reviews`)

10. Show the titles of books that received at least one anonymous review.  
    (Hint: `WHERE reader_id IS NULL`)

## Aggregations and Advanced Conditions

11. Calculate the average rating for each book.  
    Show: `book_title`, `avg(rating)`.

12. List only books whose average rating is greater than or equal to 4.

13. Show the author with the highest number of registered books.  
    (Use `ORDER BY` + `LIMIT 1`)

14. List the top 3 highest-rated books (by average rating).

15. List readers who wrote more than one review (non-anonymous).  
    (Use `COUNT(reader_id)` and `HAVING`)

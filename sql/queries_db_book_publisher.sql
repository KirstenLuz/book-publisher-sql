-- Queries auxiliares
SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM books_authors;
SELECT * FROM genres;
SELECT * FROM readers;
SELECT * FROM reviews;

SELECT
*
FROM authors a
JOIN books_authors ba ON ba.author_id = a.id
JOIN books b ON b.id = ba.book_id
LEFT JOIN genres g ON g.id = b.genre_id
LEFT JOIN reviews rw ON rw.book_id = b.id
LEFT JOIN readers rd ON rw.reader_id = rd.id;

-- 1. Liste todos os livros cadastrados (título e data de publicação)
SELECT 
	b.book_title,
	g.genre_title,
	b.publication_date
FROM books b
JOIN genres g ON b.genre_id = g.id

-- 2. Liste os nomes e datas de nascimento dos autores nascidos antes de 1950
SELECT a.author_name, a. birthday FROM authors a WHERE EXTRACT(YEAR FROM a.birthday) < '1950';

-- 3. Mostre o título e o gênero de todos os livros
SELECT
	b.book_title,
	g.genre_title
FROM books b
JOIN genres g ON b.genre_id = g.id

-- 4. Liste todos os leitores do gênero feminino
SELECT rd.reader_name, rd.reader_gender FROM readers rd WHERE rd.reader_gender = 'F';

-- 5. Mostre todos os livros publicados após o ano 2000
SELECT b.book_title, b.publication_date, b.book_summary FROM books b WHERE EXTRACT(YEAR FROM b.publication_date) > '2000';

-- 6. Liste os títulos dos livros e os nomes de seus respectivos autores
SELECT
	b.book_title,
	a.author_name
FROM books b
JOIN books_authors ba ON ba.book_id = b.id
JOIN authors a ON a.id = ba.author_id;

-- 7. Liste o nome dos leitores e os títulos dos livros que eles avaliaram
SELECT
	rd.reader_name,
	b.book_title,
	rw.rating
FROM readers rd
JOIN reviews rw ON rw.reader_id = rd.id
JOIN books b ON b.id = rw.book_id;

-- 8. Mostre o nome dos autores e o total de livros que cada um escreveu
SELECT
	a.author_name
	COUNT(ba.book_id) AS total_books
FROM authors a
JOIN books_authors ba ON ba.author_id = a.id
GROUP BY a.author_name
ORDER BY total_books DESC;

-- 9. Liste os livros com o número de resenhas recebidas (anônimas + identificadas)
SELECT
	b.book_title,
	COUNT(rw.book_id) AS total_ratings
FROM books b
JOIN reviews rw ON rw.book_id = b.id
GROUP BY b.book_title
ORDER BY total_ratings DESC;

-- 10. Mostre os títulos dos livros que receberam ao menos uma avaliação anônima
SELECT
	b.book_title,
	COUNT(*) AS total_anonymous_ratings
FROM books b
JOIN reviews rw ON rw.book_id = b.id
WHERE rw.reader_id IS NULL
GROUP BY b.book_title

-- 11. Calcule a média das notas (rating) para cada livro, mostrando título e média
SELECT 
	b.book_title,
	AVG(rw.rating) AS total_rating
FROM reviews rw
JOIN books b ON rw.book_id = b.id
GROUP BY b.book_title;

-- 12. Liste apenas os livros cuja média de avaliação é maior ou igual a 4
SELECT 
	b.book_title,
	AVG(rw.rating) AS media_rating
FROM reviews rw
JOIN books b ON rw.book_id = b.id
GROUP BY b.book_title
HAVING AVG(rw.rating) >= 4
ORDER BY media_avaliacao DESC;


-- 13. Mostre o autor com o maior número de livros cadastrados


-- 14. Liste os 3 livros mais bem avaliados (maior média de nota)


-- 15. Liste os leitores que escreveram mais de uma resenha (não anônima)

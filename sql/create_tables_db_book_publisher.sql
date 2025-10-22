CREATE TABLE IF NOT EXISTS books (
	id SERIAL PRIMARY KEY,
	book_title VARCHAR(255) NOT NULL,
	publication_date DATE,
	ISBN VARCHAR(13),
	book_summary TEXT,
	genre_id INT NOT NULL REFERENCES genres (id)
);

CREATE TABLE IF NOT EXISTS genres (
	id SERIAL PRIMARY KEY,
	genre_title VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS authors (
	id SERIAL PRIMARY KEY,
	author_name VARCHAR(255) NOT NULL,
	biography TEXT,
	birthday DATE
);

CREATE TABLE IF NOT EXISTS books_authors (
	author_id INT REFERENCES authors (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	book_id INT REFERENCES books (id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	PRIMARY KEY (author_id, book_id)
);

CREATE TABLE IF NOT EXISTS readers (
	id SERIAL PRIMARY KEY,
	reader_name VARCHAR(255),
	email VARCHAR(255) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL,
	birthday DATE,
	reader_gender CHAR(1)
);

CREATE TABLE IF NOT EXISTS reviews (
	id SERIAL PRIMARY KEY,
	book_id INT NOT NULL REFERENCES books (id),
	reader_id INT REFERENCES readers (id),
	rating INT CHECK (rating >= 1 AND rating <= 5),
	comment TEXT
);


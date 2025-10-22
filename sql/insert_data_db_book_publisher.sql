-- Gêneros
INSERT INTO genres (genre_title) VALUES
('Ficção Científica'),
('Romance'),
('Fantasia'),
('Mistério'),
('Biografia'),
('História'),
('Terror');

-- Autores
INSERT INTO authors (author_name, biography, birthday) VALUES
('Isaac Asimov', 'Cientista e escritor russo-americano, conhecido por suas obras de ficção científica.', '1920-01-02'),
('Agatha Christie', 'Escritora britânica famosa por seus romances policiais e detetives como Hercule Poirot.', '1890-09-15'),
('J.K. Rowling', 'Autora britânica da série Harry Potter.', '1965-07-31'),
('Stephen King', 'Autor americano de romances de terror, suspense e fantasia.', '1947-09-21'),
('Yuval Noah Harari', 'Historiador e professor israelense, autor de livros sobre evolução humana e sociedade.', '1976-02-24'),
('Jane Austen', 'Escritora inglesa famosa por retratar a vida e os costumes da aristocracia britânica.', '1775-12-16');

-- Livros
INSERT INTO books (book_title, publication_date, ISBN, book_summary, genre_id) VALUES
('Fundação', '1951-06-01', '9780553293357', 'A saga da queda e renascimento de um império galáctico.', 1),
('Assassinato no Expresso do Oriente', '1934-01-01', '9780062073501', 'Hercule Poirot investiga um assassinato em um trem luxuoso.', 4),
('Harry Potter e a Pedra Filosofal', '1997-06-26', '9780747532699', 'Um jovem descobre que é um bruxo e ingressa em Hogwarts.', 3),
('It: A Coisa', '1986-09-15', '9780450411434', 'Um grupo de amigos enfrenta uma entidade maléfica que assume a forma de um palhaço.', 7),
('Sapiens: Uma Breve História da Humanidade', '2011-01-01', '9780062316097', 'Explora a história da humanidade desde os primeiros hominídeos até a era moderna.', 6),
('Orgulho e Preconceito', '1813-01-28', '9780141439518', 'Romance sobre as relações sociais e amorosas da Inglaterra georgiana.', 2);

-- Livros e autores
INSERT INTO books_authors (author_id, book_id) VALUES
(1, 1), -- Asimov - Fundação
(2, 2), -- Agatha Christie - Expresso do Oriente
(3, 3), -- Rowling - Harry Potter
(4, 4), -- Stephen King - It
(5, 5), -- Harari - Sapiens
(6, 6); -- Austen - Orgulho e Preconceito

-- Leitores
INSERT INTO readers (reader_name, email, password, birthday, reader_gender) VALUES
('Lucas Andrade', 'lucas.andrade@email.com', 'senha123', '1999-05-14', 'M'),
('Marina Costa', 'marina.costa@email.com', 'senha123', '2001-09-22', 'F'),
('Rafael Nunes', 'rafael.nunes@email.com', 'senha123', '1995-12-03', 'M'),
('Carla Ferreira', 'carla.ferreira@email.com', 'senha123', '2000-04-18', 'F'),
('João Pedro Silva', 'joao.silva@email.com', 'senha123', '1998-02-10', 'M');

-- Avaliações
INSERT INTO reviews (book_id, reader_id, rating, comment) VALUES
(1, 1, 5, 'Uma obra-prima da ficção científica!'),
(2, 2, 4, 'Mistério envolvente e final surpreendente.'),
(3, 3, 5, 'Um livro mágico, cheio de imaginação e nostalgia.'),
(4, 4, 3, 'Assustador, mas com partes longas demais.'),
(5, 5, 5, 'Transformador! Mudou minha visão sobre a humanidade.'),
(6, 2, 4, 'Romance delicado e inteligente.'),
-- anônimas
(3, NULL, 5, 'Li quando criança e continuo amando.'),
(1, NULL, 4, 'Excelente mundo criado por Asimov, mas a escrita é densa.'),
(4, NULL, 2, 'Não gostei muito, achei previsível.'),
(5, NULL, 5, 'Leitura obrigatória para qualquer pessoa curiosa sobre história.');
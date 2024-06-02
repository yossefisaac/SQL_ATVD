-- Inserção de dados na tabela cliente
INSERT INTO cliente (nome, endereco, telefone, cidade, pais) VALUES 
('João Silva', 'Rua A, 123', '1234-5678', 'São Paulo', 'Brasil'),
('Maria Oliveira', 'Avenida B, 456', '9876-5432', 'Rio de Janeiro', 'Brasil'),
('Carlos Souza', 'Travessa C, 789', '4567-8901', 'Curitiba', 'Brasil');

-- Inserção de dados na tabela ator
INSERT INTO ator (nome, nacionalidade) VALUES 
('Robert Downey Jr.', 'Americana'),
('Chris Hemsworth', 'Australiana'),
('Scarlett Johansson', 'Americana'),
('Sonia Braga', 'Brasileira');

-- Inserção de dados na tabela filmes com novos campos
INSERT INTO filmes (titulo, ano, genero, duracao_do_filme, preco_locacao, custo_substituicao) VALUES 
('Iron Man', 2008, 'Ação', 126, 4.99, 20.00),
('Thor', 2011, 'Ação', 70, 5.99, 18.00),
('The Avengers', 2012, 'Ação', 79, 4.99, 22.00),
('Auto da Compadecida', 2000, 'Comédia', 104, 3.50, 25.00);

-- Inserção de dados na tabela filme_ator
INSERT INTO filme_ator (filme_id, ator_id) VALUES 
(1, 1), -- Robert Downey Jr. em Iron Man
(2, 2), -- Chris Hemsworth em Thor
(3, 1), -- Robert Downey Jr. em The Avengers
(3, 2), -- Chris Hemsworth em The Avengers
(3, 3), -- Scarlett Johansson em The Avengers
(4, 4); -- Sonia Braga em Auto da Compadecida


-- Inserção de dados na tabela categorias
INSERT INTO categorias (nome) VALUES 
('Comédia'), 
('Drama'), 
('Ação'), 
('Aventura');

-- Inserção de dados na tabela filme_categoria
INSERT INTO filme_categoria (filme_id, categoria_id) VALUES 
(1, 3), -- Iron Man -> Ação
(2, 3), -- Thor -> Ação
(3, 4), -- The Avengers -> Aventura
(4, 1); -- Auto da compadecida -> Comédia

-- Inserção de dados na tabela aluguel
INSERT INTO aluguel (cliente_id, filme_id, data_aluguel, data_devolucao) VALUES 
(1, 1, '2024-05-01', '2024-05-05'),
(2, 2, '2024-05-03', '2024-05-07'),
(3, 3, '2024-05-04', '2024-05-10');
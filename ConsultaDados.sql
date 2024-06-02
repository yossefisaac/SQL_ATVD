-- 1. Listar todos os dados da tabela ATOR.
SELECT * FROM ator;

-- 2. Listar apenas o primeiro nome e o último nome dos registros da tabela CLIENTE.
SELECT 
    SUBSTRING_INDEX(nome, ' ', 1) AS primeiro_nome, 
    SUBSTRING_INDEX(nome, ' ', -1) AS ultimo_nome 
FROM cliente;

-- 3. Listar as cidades cujo nome iniciam com a letra C.
SELECT cidade 
FROM cliente 
WHERE cidade LIKE 'C%';

-- 4. Listar os títulos dos filmes com duração do filme entre 60 e 80 minutos
SELECT titulo 
FROM filmes 
WHERE duracao_do_filme BETWEEN 60 AND 80;

-- 5. Listar os dados dos filmes com preço de locação abaixo de 10 real, ordenar pelo título.
SELECT * 
FROM filmes 
WHERE preco_locacao < 10 
ORDER BY titulo;

-- 6. Listar os filmes com custo de substituição acima de 20 reais, mas que tenha preço de locação abaixo de 5 reais. Ordene pelo custo de substituição e depois pelo preço de locação.
SELECT * 
FROM filmes 
WHERE custo_substituicao > 20 AND preco_locacao < 5 
ORDER BY custo_substituicao, preco_locacao;

-- 7. Qual o custo de substituição mais caro?
SELECT MAX(custo_substituicao) AS custo_substituicao_mais_caro 
FROM filmes;

-- 8. Listar todos os dados do filme de custo de substituição mais caro.
SELECT * 
FROM filmes 
WHERE custo_substituicao = (SELECT MAX(custo_substituicao) FROM filmes);

-- 9. Qual a média do preço de locação?
SELECT AVG(preco_locacao) AS media_preco_locacao 
FROM filmes;

-- 10. Quantos filmes têm duração de 120 minutos ou mais?
SELECT COUNT(*) AS quantidade_filmes_120_ou_mais 
FROM filmes 
WHERE duracao_do_filme >= 120;

-- 11. Qual a menor duração da locação?
SELECT MIN(duracao_do_filme) AS menor_duracao_locacao 
FROM filmes;

-- 12. Liste o título dos filmes com preço da locação acima da média
SELECT titulo 
FROM filmes 
WHERE preco_locacao > (SELECT AVG(preco_locacao) FROM filmes);

-- 13. Liste o título dos filmes com maior duração da locação
SELECT titulo 
FROM filmes 
WHERE duracao_do_filme = (SELECT MAX(duracao_do_filme) FROM filmes);

-- 14. Liste o título dos filmes com menor custo de substituição
SELECT titulo 
FROM filmes 
WHERE custo_substituicao = (SELECT MIN(custo_substituicao) FROM filmes);

-- 15. Quais cidades do 'Brasil' estão cadastradas no sistema?
SELECT DISTINCT cidade 
FROM cliente 
WHERE pais = 'Brasil';

-- 16. Liste o nome dos clientes, a cidade e o país onde moram.
SELECT nome, cidade, pais 
FROM cliente;

-- 17. Liste o título do filme e sua(s) respectiva(s) categoria(s)
SELECT f.titulo, c.nome AS categoria 
FROM filmes f
JOIN filme_categoria fc ON f.id = fc.filme_id
JOIN categorias c ON fc.categoria_id = c.id;

-- 18. Quais atores trabalharam no filme ‘Alto da Compadecida’?
SELECT a.nome 
FROM ator a
JOIN filme_ator fa ON a.id = fa.ator_id
JOIN filmes f ON fa.filme_id = f.id
WHERE f.titulo = 'Auto da Compadecida';

-- 19. Quais filmes a atriz “Sonia Braga” trabalhou?
SELECT f.titulo 
FROM filmes f
JOIN filme_ator fa ON f.id = fa.filme_id
JOIN ator a ON fa.ator_id = a.id
WHERE a.nome = 'Sonia Braga';

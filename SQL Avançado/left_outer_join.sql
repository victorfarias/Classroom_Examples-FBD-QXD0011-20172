-- Todos os funcionários e seus 
-- departamentos inpendente se ele tem departamento ou não 
SELECT pnome, dnome
FROM (funcionario LEFT OUTER JOIN departamento ON dnr=dnumero);

-- obter o nomes de todos os funcionários 
-- e a quantidade de dependentes que cada um tem
SELECT cpf, pnome, COUNT(nome_dependente)
FROM (funcionario LEFT JOIN dependente ON cpf=fcpf)
GROUP BY cpf
ORDER BY COUNT(nome_dependente) DESC;
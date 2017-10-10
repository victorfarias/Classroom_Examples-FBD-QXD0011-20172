-- O nome de todos os empregados e a quantidade de dependentes

SELECT f.pnome, COUNT(d.nome_dependente)
FROM funcionario f, dependente d
WHERE f.cpf=d.fcpf
GROUP BY f.pnome
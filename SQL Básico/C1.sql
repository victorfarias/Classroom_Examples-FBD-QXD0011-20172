-- C1
SELECT pnome, endereco
FROM funcionario, departamento
where dnome='Pesquisa' AND dnr=dnumero;

SELECT f.pnome, f.endereco
FROM funcionario f, departamento d
where d.dnome='Pesquisa' AND f.dnr=d.dnumero;

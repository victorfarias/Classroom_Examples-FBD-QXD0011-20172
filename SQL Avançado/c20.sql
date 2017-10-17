-- Achar soma, máximo, mínimo e médio dos salários de pesquisa
-- Implícito 
 SELECT MAX(salario), MIN(salario), AVG(salario), SUM(salario)
 FROM funcionario, departamento
 WHERE dnr=dnumero AND
       dnome='Pesquisa';

-- Explícito
 SELECT MAX(salario), MIN(salario), AVG(salario), SUM(salario)
 FROM (funcionario JOIN departamento ON dnr=dnumero)
 WHERE dnome='Pesquisa';
 
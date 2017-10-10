-- Para cada departamento, recuperar o número, 
-- quantidade de funcionarios e salário médio

SELECT d.dnumero, count(*), AVG(f.salario)
FROM  funcionario f, departamento d
WHERE f.dnr = d.dnumero
GROUP BY d.dnumero
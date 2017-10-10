-- Obter nome dos departamentos que 
-- possuem mais de um funcionário 

SELECT d.dnome, COUNT(*)
FROM funcionario f, departamento d
WHERE f.dnr=d.dnumero
GROUP BY d.dnumero, d.dnome
HAVING COUNT(*)>1;

-- Obter nomes do funcionarios 
-- que possuem mais de um dependente 
SELECT f.pnome, COUNT(*)
FROM funcionario f, dependente d
WHERE f.cpf=d.fcpf
GROUP BY f.cpf, f.pnome
HAVING COUNT(*)>1;
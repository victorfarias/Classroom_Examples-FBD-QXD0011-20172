-- Calcular o número de funcionários lotados em 'Administracao'
SELECT *
FROM funcionario f, departamento d 
WHERE d.dnome='Administracao' AND
      f.dnr=d.dnumero;

-- Mostrar folha de pagamento (Somatório dos salários)
SELECT SUM(salario)
FROM funcionario;

-- Mostrar média dos salários
SELECT AVG(salario)
FROM funcionario;
 
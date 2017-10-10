-- Contar todos os funcionarios no departamento 'Pesquisa' 
SELECT count(*)
FROM funcionario f, departamento d
WHERE d.dnome='Pesquisa' AND
      f.dnr=d.dnumero;

-- Contar todos os funcionarios que tem sexo masculino
SELECT count(*)
FROM funcionario f
WHERE f.sexo='M'; 
      
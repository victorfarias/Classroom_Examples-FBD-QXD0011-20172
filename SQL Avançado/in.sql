


-- Todos os funcionarios que o nome é 
-- Joice ou Fernando ou Alice 
SELECT pnome
FROM funcionario
WHERE pnome IN ('Joice','Fernando','Alice');


-- Todos os funcionarios que o nome NÃO é 
-- Joice ou Fernando ou Alice 
SELECT pnome
FROM funcionario
WHERE pnome NOT IN ('Joice','Fernando','Alice');

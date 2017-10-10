-- Todos que não possuem supervisor
SELECT pnome, minicial
FROM funcionario
WHERE cpf_supervisor IS NULL;

-- Todos que possuem surpevisor
SELECT pnome
FROM funcionario
WHERE cpf_supervisor IS NOT NULL
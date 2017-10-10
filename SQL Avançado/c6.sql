-- Todos os funcionários que não possuem dependentes

SELECT f.pnome
FROM funcionario f
WHERE NOT EXISTS (
    SELECT d.nome_dependente
    FROM dependente d
    WHERE f.cpf=d.fcpf
)
-- Funcionario que são gerente e tem pelo menos um dependente
SELECT f.pnome
FROM funcionario f
WHERE EXISTS (
    SELECT *
    FROM dependente d
    WHERE f.cpf=d.fcpf
) AND
EXISTS (
    SELECT *
    FROM departamento d
    WHERE f.cpf=d.cpf_gerente
)
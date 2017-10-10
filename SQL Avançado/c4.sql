-- Todos os números de projeto em que Jorge é gerente 
-- e trabalha também
SELECT p.projnumero
FROM projeto p
WHERE p.dnum IN (SELECT d.dnumero
                FROM departamento d, funcionario f
                WHERE d.cpf_gerente=f.cpf
                      AND f.pnome='Jorge')
    OR
        p.dnum IN (SELECT p.dnum
                FROM trabalha_em t, funcionario f, projeto p
                WHERE t.fcpf = f.cpf 
                        AND t.pnr=p.projnumero
                        AND f.pnome='Jorge')
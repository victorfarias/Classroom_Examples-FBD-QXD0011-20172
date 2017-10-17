SELECT projnumero, pnome, dnumero, endereco
FROM ((projeto JOIN departamento ON dnum=dnumero) 
        JOIN funcionario ON cpf=cpf_gerente)
WHERE projlocal='Maua'
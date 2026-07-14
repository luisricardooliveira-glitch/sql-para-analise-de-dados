/*
Arquivo: 02-joins.sql
Objetivo: demonstrar relacionamentos entre funcionários e departamentos.
Chave de ligação: id_departamento.
*/

-- INNER JOIN: retorna somente funcionários com departamento correspondente.
SELECT
    F.id_funcionario,
    F.nome AS [Nome do Funcionário],
    D.nome_departamento AS Departamento,
    F.salario AS [Salário Mensal]
FROM funcionarios AS F
INNER JOIN departamentos AS D
    ON F.id_departamento = D.id_departamento
ORDER BY D.nome_departamento, F.nome;

-- LEFT JOIN: mantém todos os funcionários, inclusive sem departamento cadastrado.
SELECT
    F.id_funcionario,
    F.nome AS [Nome do Funcionário],
    COALESCE(D.nome_departamento, 'Não informado') AS Departamento,
    F.salario AS [Salário Mensal]
FROM funcionarios AS F
LEFT JOIN departamentos AS D
    ON F.id_departamento = D.id_departamento
ORDER BY F.salario DESC;

-- Exemplo completo: cinco maiores salários, excluindo a Diretoria.
SELECT TOP 5
    F.nome AS [Nome do Funcionário],
    D.nome_departamento AS Departamento,
    F.salario AS [Salário Mensal]
FROM funcionarios AS F
LEFT JOIN departamentos AS D
    ON F.id_departamento = D.id_departamento
WHERE F.salario > 3000
  AND D.nome_departamento <> 'Diretoria'
ORDER BY F.salario DESC;

-- Identifica funcionários sem departamento relacionado.
SELECT
    F.id_funcionario,
    F.nome AS [Nome do Funcionário]
FROM funcionarios AS F
LEFT JOIN departamentos AS D
    ON F.id_departamento = D.id_departamento
WHERE D.id_departamento IS NULL;

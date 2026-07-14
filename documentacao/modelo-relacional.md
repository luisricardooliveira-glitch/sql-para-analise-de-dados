# Modelo relacional utilizado nos exemplos

## Funcionários e departamentos

Os exemplos introdutórios utilizam duas tabelas fictícias.

### `funcionarios`

- `id_funcionario` — chave primária;
- `nome` — nome do funcionário;
- `salario` — salário mensal;
- `id_departamento` — chave estrangeira para `departamentos`.

### `departamentos`

- `id_departamento` — chave primária;
- `nome_departamento` — nome do departamento.

## Relacionamento

```text
funcionarios.id_departamento
            ↓
departamentos.id_departamento
```

Cada departamento pode ter vários funcionários. Cada funcionário pode estar relacionado a um departamento.

## Diferença entre os JOINs utilizados

### `INNER JOIN`

Retorna somente registros que possuem correspondência nas duas tabelas.

Uso prático: listar apenas funcionários que tenham um departamento válido cadastrado.

### `LEFT JOIN`

Mantém todos os registros da tabela posicionada à esquerda, mesmo quando não existe correspondência na outra tabela.

Uso prático: identificar funcionários sem departamento ou preservar a lista completa de funcionários.

## AdventureWorks

A consulta de compras relaciona:

```text
Purchasing.PurchaseOrderDetail.ProductID
                    ↓
Production.Product.ProductID
```

`PurchaseOrderDetail` contém os itens dos pedidos. `Product` contém o cadastro e o nome legível de cada produto.

O relacionamento permite transformar um código numérico de produto em informação compreensível para análise.
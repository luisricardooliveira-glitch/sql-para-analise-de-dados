# Dicionário de dados

## Tabelas fictícias

### `funcionarios`

| Coluna | Tipo sugerido | Descrição |
|---|---|---|
| `id_funcionario` | `INT` | Identificador único do funcionário |
| `nome` | `VARCHAR(100)` | Nome completo |
| `salario` | `DECIMAL(10,2)` | Salário mensal |
| `id_departamento` | `INT` | Departamento relacionado |

### `departamentos`

| Coluna | Tipo sugerido | Descrição |
|---|---|---|
| `id_departamento` | `INT` | Identificador único do departamento |
| `nome_departamento` | `VARCHAR(100)` | Nome do departamento |

## AdventureWorks

### `Purchasing.PurchaseOrderDetail`

| Coluna | Descrição |
|---|---|
| `PurchaseOrderID` | Identificador do pedido de compra |
| `ProductID` | Código do produto comprado |
| `OrderQty` | Quantidade solicitada |
| `UnitPrice` | Preço unitário |
| `LineTotal` | Valor total do item no pedido |
| `ReceivedQty` | Quantidade recebida |
| `DueDate` | Data prevista de entrega |

### `Production.Product`

| Coluna | Descrição |
|---|---|
| `ProductID` | Identificador único do produto |
| `Name` | Nome legível do produto |

## Observação

Os tipos das tabelas fictícias são sugestões para reprodução dos exercícios. As tabelas do AdventureWorks seguem a estrutura oficial do banco de estudos.
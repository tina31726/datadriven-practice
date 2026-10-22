# The Balance Always Reconciles

*Money out, payments back. The balance has to be exact.*

[Data Modeling · Easy · on DataDriven](https://datadriven.io/problems/the_balance_always_reconciles)

## How it went

| | |
|---|---|
| Solved | 2026-10-22 |
| Accepted | on the first submission |
| Hints | 2 hints |
| Concepts | Attributes, Constraints, Entities, 1NF, Foreign Keys, Grain Definition, Immutable Logs, Key Generation, Metric Additivity, One-to-Many, Primary Keys, 2NF, Surrogate Keys, 3NF |

## The design

```mermaid
erDiagram
    loan {
        VARCHAR loan_id PK
        FLOAT interest_rate
        INT term_length
        VARCHAR product_id FK
    }
    account {
        VARCHAR account_id PK
        INT balance
        INT amount
        DATE due_date
    }
    transction {
        VARCHAR transaction_id PK
        INT amount
        DATE date
    }
    customer_loan {
        VARCHAR customer_id
        VARCHAR loan_id FK
        VARCHAR transaction_id FK
        VARCHAR account_id FK
    }
    Product {
        VARCHAR product_id PK
        VARCHAR loan_type
    }
    loan only one optionally to zero or more customer_loan : "loan_id"
    transction only one optionally to zero or more customer_loan : "loan_id = transaction_id"
    Product only one optionally to zero or more loan : "product_id"
    account only one optionally to zero or more customer_loan : "account_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.

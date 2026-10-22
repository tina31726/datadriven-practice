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
        unspecified loan_id PK
        unspecified customer_id FK
        unspecified load_type_id FK
        unspecified origination_date
        unspecified principal_amount
        unspecified status
    }
    loan_type {
        unspecified load_type_id PK
        unspecified product_name
        unspecified default_rate
        unspecified default_term_months
    }
    customer {
        unspecified customer_id PK
        unspecified customer_name
        unspecified customer_email
        unspecified joined_at
    }
    transaction {
        unspecified transaction PK
        unspecified load_id FK
        unspecified paid_amount
        unspecified paid_date
        unspecified type
    }
    loan_type only one optionally to zero or more loan : "load_type_id"
    customer only one optionally to zero or more loan : "customer_id"
    loan only one optionally to zero or more transaction : "load_id = loan_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.

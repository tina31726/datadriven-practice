# The Hunger Shift

*What's everyone eating? The answer changes hourly.*

[Data Modeling · Medium · on DataDriven](https://datadriven.io/problems/the_hunger_shift)

## How it went

| | |
|---|---|
| Solved | 2026-10-22 |
| Accepted | on the first submission |
| Hints | none |
| Concepts | Data Types, Denormalization, Dimension Tables, Fact Tables, Foreign Keys, Grain Definition, One-to-Many, Pre-Aggregation, Primary Keys, Star Schema, Surrogate Keys |

## The design

```mermaid
erDiagram
    dish_order {
        unspecified dish_id PK
        unspecified dish_type_id FK
        unspecified order_id FK
        unspecified total_amount
    }
    Dish_type {
        unspecified dish_type_id PK
        unspecified dish_name
    }
    restaurant {
        unspecified restaurant_id PK
        unspecified city
    }
    order {
        unspecified order_id PK
        unspecified restuarant_id FK
        unspecified paid_date
        unspecified total_amount
    }
    Dish_type only one optionally to zero or more dish_order : "dish_type_id"
    order only one optionally to zero or more dish_order : "order_id"
    restaurant only one optionally to zero or more order : "restuarant_id = restaurant_id"
```

The accepted design is in [`schema.sql`](./schema.sql) as DDL and in [`schema.json`](./schema.json) as JSON.

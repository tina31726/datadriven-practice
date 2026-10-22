CREATE TABLE dish_order (
    dish_id TEXT,  /* no type on the canvas */
    dish_type_id TEXT,  /* no type on the canvas */
    order_id TEXT,  /* no type on the canvas */
    total_amount TEXT,  /* no type on the canvas */
    PRIMARY KEY (dish_id)
);

CREATE TABLE "Dish type" (
    dish_type_id TEXT,  /* no type on the canvas */
    dish_name TEXT,  /* no type on the canvas */
    PRIMARY KEY (dish_type_id)
);

CREATE TABLE restaurant (
    restaurant_id TEXT,  /* no type on the canvas */
    city TEXT,  /* no type on the canvas */
    PRIMARY KEY (restaurant_id)
);

CREATE TABLE "order" (
    order_id TEXT,  /* no type on the canvas */
    restuarant_id TEXT,  /* no type on the canvas */
    paid_date TEXT,  /* no type on the canvas */
    total_amount TEXT,  /* no type on the canvas */
    PRIMARY KEY (order_id)
);

ALTER TABLE dish_order
    ADD FOREIGN KEY (dish_type_id) REFERENCES "Dish type" (dish_type_id);

ALTER TABLE dish_order
    ADD FOREIGN KEY (order_id) REFERENCES "order" (order_id);

ALTER TABLE "order"
    ADD FOREIGN KEY (restuarant_id) REFERENCES restaurant (restaurant_id);

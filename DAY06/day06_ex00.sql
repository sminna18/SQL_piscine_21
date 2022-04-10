CREATE TABLE person_discounts
(id BIGINT PRIMARY KEY,
 fk_person_discounts_person_id BIGINT,
 FOREIGN KEY (fk_person_discounts_person_id) REFERENCES person(id),
 fk_person_discounts_pizzeria_id BIGINT,
 FOREIGN KEY (fk_person_discounts_pizzeria_id) REFERENCES pizzeria(id),
 discount FLOAT
)

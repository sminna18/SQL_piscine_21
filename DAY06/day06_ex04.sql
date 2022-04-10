ALTER TABLE person_discounts
ALTER COLUMN discount SET DEFAULT 0,
ADD CONSTRAINT ch_nn_person_id CHECK (fk_person_discounts_person_id IS NOT NULL),
ADD CONSTRAINT ch_nn_pizzeria_id CHECK (fk_person_discounts_pizzeria_id IS NOT NULL),
ADD CONSTRAINT ch_nn_discount CHECK (discount IS NOT NULL),
ADD CONSTRAINT ch_range_discount CHECK(discount >= 0 AND discount <= 100)

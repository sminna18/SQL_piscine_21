COMMENT ON TABLE person_discounts IS 'Таблица скидок';
COMMENT ON COLUMN person_discounts.id IS 'Идентификатор';
COMMENT ON COLUMN person_discounts.fk_person_discounts_person_id IS 'Имя пользавателя';
COMMENT ON COLUMN person_discounts.fk_person_discounts_pizzeria_id IS 'Имя пиццерии';
COMMENT ON COLUMN person_discounts.discount IS 'Размер скидки';

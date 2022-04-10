CREATE INDEX idx_person_name on person(upper(name));

SET enable_seqscan = OFF;
explain analyze 

select * from person where (upper(name)) is not  null

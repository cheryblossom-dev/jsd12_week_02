-- Clear existing data to prevent duplication
TRUNCATE TABLE health_need RESTART IDENTITY CASCADE;

-- Mock Data for orderItems
INSERT INTO health_need (health_id,health_name) VALUES
(1,'protein_supplement'),
(2,'improve_memory'),
(3,'boost_immunity');
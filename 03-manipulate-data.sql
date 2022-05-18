-- INSERT INTO events (
--     name, 
--     date_planned, 
--     description, 
--     max_participants, 
--     min_age
--     )
-- VALUES (
--     'A first event', 
--     '2022-05-15 16:30:00', 
--     'This is a first event description',
--     20,
--     18
--     ),
--     (
--     'A second event', 
--     '2022-05-15 16:30:00', 
--     'This is a second event description',
--     20,
--     25
--     );


-- UPDATE events
-- SET min_age = 12
-- WHERE id = 1; -- = equal to comapre equality, <> equal to  not equal

DELETE FROM events
WHERE id = 1;

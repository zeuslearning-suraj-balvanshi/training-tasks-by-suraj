--  START IF exists example
--  SELECT EXISTS(
-- 	SELECT walk_in_id
--     FROM user_registered_walk_in
--  )
--  END IF exists example

-- START Checking before insertion example
-- INSERT INTO <table_name> (<column_name>)
-- SELECT * FROM (SELECT '192.168.100.1') AS tmp
-- WHERE NOT EXISTS (
--     SELECT ip_addr FROM ip_list WHERE ip_addr='192.168.100.1'
-- );
-- END Checking before insertion example

-- START Create temp table example
-- CREATE TEMPORARY TABLE tmp
-- SELECT * FROM user_registered_walk_in;

-- SELECT * FROM tmp;

-- DROP TABLE tmp;
-- END Create temp table example

-- Syntax of backslash array
-- set @example = '
-- 		\'Value1\',
--     	\'Value2\',
--     	\'Value3\',
-- '




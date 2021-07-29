SELECT 
	w.walk_in_title,
    w.start_date,
    w.end_date,
    l.location,
    GROUP_CONCAT(r.role_title)
FROM walk_in as w
INNER JOIN walk_in_location as l
	ON w.location_id = l.location_id
INNER JOIN roles_available as ra
	ON w.walk_in_id = ra.walk_in_id
INNER JOIN roles as r
	ON ra.roles_id = r.roles_id
GROUP BY w.walk_in_id;

SELECT 
	walk_in_id,
    group_concat(roles_id)
FROM roles_available
GROUP BY walk_in_id

    
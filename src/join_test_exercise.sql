insert into users (name,email,role_id) VALUES
  ('billy','billy@example.com',null),
  ('betty','betty@example.com',2),
  ('brian','brian@example.com',2),
  ('brandon','brandon@example.com',2);

SELECT users.name as user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
  LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
  RIGHT JOIN roles ON users.role_id = roles.id;

select roles.name as role_name, count(users.name) as `users with this role`
from users
right join roles on users.role_id = roles.id
group by roles.name order by `users with this role`;


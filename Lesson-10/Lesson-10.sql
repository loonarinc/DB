/*Индекс создание медиа*/
CREATE INDEX media_created_at_idx ON media(created_at);

/*Индекс имя фамилия*/
CREATE INDEX profiles_first_name_last_name_idx ON profiles(first_name, last_name);

/*Индекс  дни рождения*/
CREATE INDEX profiles_birthday_idx ON profiles(birthday);

/*Индекс город рождения*/
CREATE INDEX profiles_hometown_idx ON profiles(hometown);

/*Индекс email*/
CREATE INDEX users_email_idx ON users(email);


/*Задание 2*/
SELECT
	communities.name,
	COUNT(profiles.user_id) OVER() / COUNT(communities.id) OVER() AS average,
	MIN(profiles.birthday) OVER w AS min,
	MAX(profiles.birthday) OVER w AS max,
	COUNT(profiles.user_id) OVER w AS total_com,
	COUNT(profiles.user_id) OVER() AS total,
	COUNT(profiles.user_id) OVER w / COUNT(profiles.user_id) OVER() * 100 AS "%%"
FROM (communities
	JOIN communities_users
		ON communities_users.community_id = communities.id
	JOIN profiles
		ON profiles.user_id = communities_users.user_id)
WINDOW w AS (PARTITION BY communities.id);
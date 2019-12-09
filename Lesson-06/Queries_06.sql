/*Задание 2. будем считать количество сообщений*/
SELECT 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = 3) AS 'user',
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = friend_id) AS 'friend',
  (SELECT
      (SELECT COUNT(*) FROM messages WHERE from_user_id = 3 AND to_user_id = friend_id)
      + /*Суммируем переписку в обе стороны*/
      (SELECT COUNT(*) FROM messages WHERE from_user_id = friend_id AND to_user_id = 3))AS messages
  FROM friendship 	
 WHERE user_id = 3
     AND confirmed_at IS NOT NULL 
     AND status_id IN (
      SELECT id FROM friendship_statuses 
        WHERE name != 'Rejected'
    ) 
UNION
SELECT 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = 3),
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  (SELECT 
      (SELECT COUNT(*) FROM messages WHERE from_user_id = user_id AND to_user_id = 3)
      + 
      (SELECT COUNT(*) FROM messages WHERE from_user_id = 3 AND to_user_id = user_id))
  FROM friendship 
 WHERE friend_id = 3
     AND confirmed_at IS NOT NULL 
     AND status_id IN (
      SELECT id FROM friendship_statuses 
        WHERE name != 'Rejected'
    )
 ORDER BY messages DESC, friend LIMIT 1;
/*Задание 3*/
 SELECT SUM(likes_summ.summ) AS young_users_likes
  FROM 
    (SELECT 
        (SELECT COUNT(*) FROM likes	WHERE target_id = profiles.user_id AND  
        	(SELECT id FROM target_types WHERE name = 'photo')
        )
        AS summ FROM profiles
      ORDER BY birthday DESC LIMIT 10) AS likes_summ;


 /*4. Лайки мужчин и женщин*/
  SELECT
     (SELECT SUM(men.likes)
        FROM
           (SELECT
                 (SELECT COUNT(id) FROM likes WHERE likes.user_id = profiles.user_id) AS likes
              	  FROM profiles 
             WHERE sex = 'm') AS men) AS men_likes,	
     		(SELECT SUM(women.likes)
               FROM
                 (SELECT
                    (SELECT COUNT(id) FROM likes WHERE likes.user_id = profiles.user_id) AS likes
                  FROM profiles 
                WHERE sex = 'f') AS women) AS women_likes;
/*5. Попробовал поиграться с активностью*/
SELECT
      id AS user,
      (SELECT CONCAT(first_name, ' ', last_name) 
         FROM users 
        WHERE id = user) AS fullname,
      (SELECT COUNT(*)
         FROM likes
        WHERE user_id = user) AS likes_summ,
      (SELECT COUNT(*)
         FROM media
        WHERE user_id = user) AS media_summ,
      (SELECT COUNT(*)
         FROM messages
        WHERE from_user_id = user) AS messages_summ,
      (SELECT COUNT(*)
         FROM posts
        WHERE user_id = user) AS posts_summ,
      (SELECT (likes_summ + media_summ + messages_summ + posts_summ)) AS summary
  FROM users
 ORDER BY summary DESC LIMIT 10;
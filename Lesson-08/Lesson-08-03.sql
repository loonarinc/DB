
/*4. Лайки мужчин и женщин*/
SELECT 
    (SELECT COUNT(id)
       FROM profiles
       JOIN likes
         ON likes.user_id = profiles.user_id AND profiles.sex = 'm') AS men_likes,
    (SELECT COUNT(id)
       FROM profiles
       JOIN likes
         ON likes.user_id = profiles.user_id AND profiles.sex = 'f') AS women_likes;

/*Остальные не успел, ещё разбираюсь с join*/
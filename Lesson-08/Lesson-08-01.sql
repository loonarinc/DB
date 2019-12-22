DESC media;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
      
ALTER TABLE profiles DROP FOREIGN KEY profles_user_id_fk;

ALTER TABLE profiles MODIFY COLUMN photo_id INT(10) UNSIGNED;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);
    
/*По правилам хорошего тона будем запрещать удаление, для сохранения целостности данных*/
   
ALTER TABLE media
  ADD CONSTRAINT media_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT media_media_type_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id)
    ON DELETE RESTRICT;
    
ALTER TABLE friendship
  ADD CONSTRAINT friendship_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT friendship_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT friendship_statuses_id_fk 
    FOREIGN KEY (status_id) REFERENCES friendship_statuses(id)
     ON DELETE RESTRICT;
     
ALTER TABLE messages
  ADD CONSTRAINT messages_attached_media_id_fk 
    FOREIGN KEY (attached_media_id) REFERENCES media(id)
     ON DELETE RESTRICT;

ALTER TABLE user_privacy
  ADD CONSTRAINT user_privacy_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT user_privacy_id_fk 
    FOREIGN KEY (privacy_id) REFERENCES privacy(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT user_privacy_section_id_fk 
    FOREIGN KEY (section_id) REFERENCES section(id)
     ON DELETE RESTRICT;


ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_community_id_fk 
    FOREIGN KEY (community_id) REFERENCES communities(id)
     ON DELETE RESTRICT;

ALTER TABLE communities_users
  ADD CONSTRAINT communities_users_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
     ON DELETE RESTRICT;
    
ALTER TABLE likes
  ADD CONSTRAINT likes_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT likes_target_id_fk 
    FOREIGN KEY (target_id) REFERENCES media(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT likes_target_type_id_fk 
    FOREIGN KEY (target_type_id) REFERENCES target_types(id)
     ON DELETE RESTRICT;
    
ALTER TABLE posts
  ADD CONSTRAINT posts_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
     ON DELETE RESTRICT;
    
ALTER TABLE privacy_except_user
  ADD CONSTRAINT privacy_except_user_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT privacy_except_user_friend_id_fk 
    FOREIGN KEY (friend_id) REFERENCES users(id)
     ON DELETE RESTRICT,
  ADD CONSTRAINT privacy_except_user_privacy_id_fk 
    FOREIGN KEY (privacy_id) REFERENCES privacy(id)
     ON DELETE RESTRICT;

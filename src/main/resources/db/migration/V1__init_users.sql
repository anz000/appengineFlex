CREATE TABLE user (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(45) NULL,
  email VARCHAR(45) NULL UNIQUE ,
  password VARCHAR(60) NULL UNIQUE ,
  role VARCHAR(45) NULL,
  created_by VARCHAR(45) NULL,
  created_date DATETIME NULL,
  last_modified_by VARCHAR(45) NULL,
  last_modified_date DATETIME NULL,
  PRIMARY KEY (id)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO user VALUES
(1,'user','user@tc.com','$2a$10$UO.8kiwYuEV1uLgLnaGQq.StCe310gQxA7eCSHtYeF4Fhkk/CtSJ2','USER','anonymousUser','2019-03-17 20:19:36','anonymousUser','2019-03-17 20:19:36'),
(2,'admin','admin@tc.com','$2a$10$IPs3v4tlr9R//EugzQztiesxbBrHfEZvCYrcGYDm5J.Z3F3OdQWb2','ADMIN','anonymousUser','2019-03-17 20:20:26','anonymousUser','2019-03-17 20:20:26'),
(3, 'user2', 'user2@tc.com', '$2a$10$hA81LFcXTI0cwNGrhJvCiOZzPDknDvO9EiqsRbYvKSNjezkxK4JxS', 'USER', 'anonymousUser', '2019-03-17 20:42:00', 'anonymousUser', '2019-03-17 20:42:00'),
(4, 'user3', 'user3@tc.com', '$2a$10$1DKw7UtSsR9BnPyCtnoRGe3aR54Acx4wNfElIYaFzWQfSZ5RDNYZy', 'USER', 'anonymousUser', '2019-03-17 20:42:16', 'anonymousUser', '2019-03-17 20:42:16')
;
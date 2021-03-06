CREATE TABLE groups (
group_id int UNIQUE NOT NULL AUTO_INCREMENT,
group_newcomers VARCHAR(50),
group_regular VARCHAR(50),
group_additiced VARCHAR(50),
group_gurus VARCHAR(50),
group_moderators VARCHAR(50),
group_admin VARCHAR(50)
)ENGINE=INNODB;

CREATE TABLE dl_users (
user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
group_id INT REFERENCES groups(group_id),
user_login VARCHAR(16) NOT NULL,
user_password VARCHAR(32) NOT NULL,
user_firstName VARCHAR(32) NOT NULL,
user_lastName VARCHAR(32) NOT NULL,
user_email VARCHAR(128) NOT NULL,
user_registered DATETIME NOT NULL,
user_url VARCHAR(128),
user_type VARCHAR(10),
user_city VARCHAR(64),
user_country VARCHAR(64),
user_secretQuestion VARCHAR(128),
user_secretAnswer VARCHAR(128),
user_confirmCode VARCHAR(32),
)ENGINE=INNODB;


CREATE TABLE wp_posts (
post_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_id int REFERENCES wp_users(user_id),
post_topic VARCHAR(80),
post_date DATE,
post_content VARCHAR(3000),
post_type VARCHAR(50)
)ENGINE=INNODB;

CREATE TABLE wp_comments (
comment_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
post_id int REFERENCES wp_posts(post_id),
user_id int REFERENCES wp_users(user_id),
comment_content VARCHAR(2000),
)ENGINE=INNODB;

CREATE TABLE wp_categories (
category_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
category_type VARCHAR(30),
category_counter int,
category_description VARCHAR(30)
)ENGINE=INNODB;

CREATE TABLE categories (
category_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
category_type VARCHAR(100),
category_description VARCHAR(2000)
)ENGINE=INNODB;

CREATE TABLE wp_post2cat (
post2cat_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
post_id int REFERENCES wp_comments(post_id),
category_id int REFERENCES categories(category_id)
)ENGINE=INNODB;

CREATE TABLE sub_category (
sub_category_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
category_id int REFERENCES categories(category_id),
sub_category_name VARCHAR(100),
sub_category_description VARCHAR(2000)
)ENGINE=INNODB;

CREATE TABLE posts (
post_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
sub_category_id int REFERENCES sub_category(sub_category_id),
user_id int REFERENCES wp_users(user_id),
post_date DATE,
post_content VARCHAR(2000)
)ENGINE=INNODB;

CREATE TABLE comments (
comment_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
post_id int REFERENCES posts(post_id),
user_id int REFERENCES wp_users(user_id),
comment_date DATE,
comment_content VARCHAR(2000)
)ENGINE=INNODB;
	

CREATE TABLE groups (
group_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
group_newcomers VARCHAR(50),
group_regular VARCHAR(50),
group_additiced VARCHAR(50),
group_gurus VARCHAR(50),
group_moderators VARCHAR(50),
group_admin VARCHAR(50)
);

CREATE TABLE categories (
category_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
category_type VARCHAR(100),
category_description VARCHAR(2000)
);

CREATE TABLE sub_category (
sub_category_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
category_id int NOT NULL FOREIGN KEY,
sub_category_name VARCHAR(100),
sub_category_description VARCHAR(2000)
);

CREATE TABLE posts (
post_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
sub_category int NOT NULL FOREIGN KEY,
user_id int NOT NULL FOREIGN KEY,
post_date DATE,
post_content VARCHAR(2000),
post_counter int NOT NULL AUTO_INCREMENT
);

CREATE TABLE comments (
comment_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
post_id int NOT NULL PRIMARY KEY,
user_id int NOT NULL PRIMARY KEY,
comment_date DATE,
comment_content VARCHAR(2000)
);
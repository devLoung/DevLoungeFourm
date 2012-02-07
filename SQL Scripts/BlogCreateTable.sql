CREATE TABLE wp_users (
user_id int NOT NULL PRIMARY KEY,
user_name VARCHAR(30),
user_type VARCHAR(10),
firstName VARCHAR(50),
lastName VARCHAR(50),
city VARCHAR(30),
country VARCHAR(20),
password VARCHAR(25),
email VARCHAR(50),
secretQuestion VARCHAR(100),
secretAnswer VARCHAR(25),
groud_id int NOT NULL FOREIGN KEY
)

CREATE TABLE wp_posts (
post_id int NOT NULL PRIMARY KEY,
user_id int NOT NULL FOREIGN KEY,
post_topic VARCHAR(80),
post_date DATE,
post_content VARCHAR(3000),
post_type VARCHAR(50)
)

CREATE TABLE wp_comments (
comment_id int NOT NULL PRIMARY KEY,
post_id INT NOT NULL FOREIGN KEY,
comment_author VARCHAR(50),
comment_email VARCHAR(100),
comment_content VARCHAR(2000),
comment_approved BIT(1),
comment_type VARCHAR(25), /*don't know why we need this? */
user_id int NOT NULL FOREIGN KEY,
)

CREATE TABLE wp_categories (
category_id int NOT NULL PRIMARY KEY,
category_type VARCHAR(30),
category_counter int,
category_description VARCHAR(30)
)

CREATE TABLE wp_post2cat (
post2cat_id NOT NULL PRIMARY KEY,
post_id NOT NULL FOREIGN KEY,
category_id NOT NULL FOREIGN KEY
)
	

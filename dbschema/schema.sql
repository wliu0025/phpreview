CREATE
DATABASE cake_cms;

USE
cake_cms;

CREATE TABLE users
(
    id       INT AUTO_INCREMENT PRIMARY KEY,
    email    VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created  DATETIME,
    modified DATETIME
);

CREATE TABLE articles
(
    id        INT AUTO_INCREMENT PRIMARY KEY,
    user_id   INT          NOT NULL,
    title     VARCHAR(255) NOT NULL,
    slug      VARCHAR(191) NOT NULL,
    body      TEXT,
    published BOOLEAN DEFAULT FALSE,
    created   DATETIME,
    modified  DATETIME,
    UNIQUE KEY (slug),
    FOREIGN KEY user_key (user_id) REFERENCES users(id)
) CHARSET=utf8mb4;

CREATE TABLE tags
(
    id       INT AUTO_INCREMENT PRIMARY KEY,
    title    VARCHAR(191),
    created  DATETIME,
    modified DATETIME,
    UNIQUE KEY (title)
) CHARSET=utf8mb4;

CREATE TABLE articles_tags
(
    article_id INT NOT NULL,
    tag_id     INT NOT NULL,
    PRIMARY KEY (article_id, tag_id),
    FOREIGN KEY tag_key(tag_id) REFERENCES tags(id),
    FOREIGN KEY article_key(article_id) REFERENCES articles(id)
);

INSERT INTO users (email, password, created, modified)
VALUES ('cakephp@example.com', 'secret', NOW(), NOW());

INSERT INTO articles (user_id, title, slug, body, published, created, modified)
VALUES (1, 'First Post', 'first-post', 'This is the first post.', 1, NOW(), NOW());





CREATE TABLE `clients`
(
    `id`             char(36)     NOT NULL,
    `full_name`      varchar(128) NOT NULL,
    `date_of_birth`  date         NOT NULL,
    `occupation`     varchar(64)  NOT NULL,
    `home_address`   varchar(255) NOT NULL,
    `postal_address` varchar(255) DEFAULT NULL,
    `email`          varchar(64)  NOT NULL,
    `phone`          char(10)     NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


ALTER TABLE `clients`
    ADD PRIMARY KEY (`id`);
--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `full_name`, `date_of_birth`, `occupation`, `home_address`, `postal_address`, `email`,
                       `phone`)
VALUES ('09cdf2f0-1959-4cb9-b9de-8779d17d3c0e', 'Wei Liu', '2000-04-12', 'student', '98 Clayton road,clayton,Vic 3168',
        '98 Clayton road,clayton,Vic 3168', 'wliu0025@student.monash.edu', '0422819353');



USE testdb;

CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100) UNIQUE,
    email VARCHAR(60) UNIQUE,
    password_hash VARCHAR(200) NOT NULL
);

INSERT INTO users (username, email, password_hash) VALUES
('default_user', 'default@default.com', '$2b$10$tWfCAlbchsRjDztrEJOWrugPtH54dqFz4H/ruafjpEzm63SqNHLta')
ON DUPLICATE KEY UPDATE username=username;
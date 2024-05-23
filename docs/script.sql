-- CREATES

CREATE TABLE IF NOT EXISTS publishers(
  publisher_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  publisher_name VARCHAR(100)
)

CREATE TABLE TABLE IF NOT EXISTS album_types(
  album_type_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  album_type_description VARCHAR(50)
)

CREATE TABLE IF NOT EXISTS trading_status(
  trading_status_id TINYINT PRIMARY KEY AUTO_INCREMENT,
  trading_status_description VARCHAR(50)
)

-- INSERTS

INSERT INTO publishers (publisher_name) 
VALUES ('Panini'),
('Topps')

INSERT INTO album_types (album_type_description)
VALUES ('Stickers'),
('Cards')

INSERT INTO trading_status (trading_status_description)
VALUES ('Accepted'),
('Pending'),
('Completed')
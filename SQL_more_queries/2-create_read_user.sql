-- This command create a Database and user
CREATE DATABASE user_0d_2_pwd;

CREATE USER 'user_0d_2'@'LOCALHOST' IDENTIFIED BY 'user_0d_2_pwd';
GRANT SELECT ON user_0d_2_pwd TO 'user_0d_2'@'LOCALHOST'

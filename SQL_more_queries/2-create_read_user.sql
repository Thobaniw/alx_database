-- This command create a Database and user
CREATE DATABASE IF NOT EXISTS user_0d_2_pwd;
CREATE USER 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';
GRANT SELECT ON user_0d_2_pwd TO 'user_0d_2'@'localhost'


-- This command create a Database 
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
-- This command use the craeted Database
USE hbtn_0d_usa;
-- This command create a table 
CREATE TABLE IF NOT EXISTS states (id INT UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY, name VARCHAR(256) NOT NULL);
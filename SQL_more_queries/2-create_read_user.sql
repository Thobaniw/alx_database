-- Check if database hbtn_0d_2 already exists
SELECT EXISTS(SELECT 1 FROM information_schema.schemata WHERE schema_name = 'hbtn_0d_2') INTO @db_exists;

-- Create database hbtn_0d_2 if it doesn't exist
IF @db_exists = 0 THEN
    CREATE DATABASE hbtn_0d_2;
    SELECT 'Database hbtn_0d_2 created.';
ELSE
    SELECT 'Database hbtn_0d_2 already exists.';
END IF;

-- Check if user_0d_2 already exists
SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'user_0d_2' AND host = 'localhost') INTO @user_exists;

-- Create user_0d_2 if it doesn't exist
IF @user_exists = 0 THEN
    CREATE USER 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';
    GRANT SELECT ON hbtn_0d_2.* TO 'user_0d_2'@'localhost';
    FLUSH PRIVILEGES;
    SELECT 'User user_0d_2 created and granted SELECT privilege on hbtn_0d_2 database.';
ELSE
    SELECT 'User user_0d_2 already exists.';
END IF;




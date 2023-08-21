-- This command create a Database and user

-- Check if user_0d_2 already exists
SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'user_0d_2' AND host = 'localhost') INTO @user_exists;

-- Create user_0d_2 if it doesn't exist
IF @user_exists = 0 THEN
    CREATE USER 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';
    SELECT 'User user_0d_2 created.';
ELSE
    SELECT 'User user_0d_2 already exists.';
END IF;

-- Check if database hbtn_0d_2 already exists
SELECT EXISTS(SELECT 1 FROM information_schema.schemata WHERE schema_name = 'hbtn_0d_2') INTO @db_exists;

-- Display grants for user_0d_2
SELECT 'Grants for user_0d_2@localhost';
IF @db_exists = 0 THEN
    SELECT 'GRANT USAGE ON *.* TO `user_0d_2`@`localhost`';
ELSE
    SELECT 'GRANT USAGE ON *.* TO `user_0d_2`@`localhost`';
    SELECT 'GRANT SELECT ON `hbtn_0d_2`.* TO `user_0d_2`@`localhost`';
END IF;

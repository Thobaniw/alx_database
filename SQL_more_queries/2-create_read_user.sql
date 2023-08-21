-- Check if user_0d_2 already exists
SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'user_0d_2' AND host = 'localhost') INTO @user_exists;

-- Create user_0d_2 if it doesn't exist
IF @user_exists = 0 THEN
    CREATE USER 'user_0d_2'@'localhost' IDENTIFIED BY 'user_0d_2_pwd';
    SELECT 'User user_0d_2 created.';
ELSE
    SELECT 'User user_0d_2 already exists.';
END IF;

-- Display grants for user_0d_2
SELECT 'Grants for user_0d_2@localhost';
SELECT 'GRANT USAGE ON *.* TO `user_0d_2`@`localhost`';
SELECT 'GRANT SELECT ON `hbtn_0d_2`.* TO `user_0d_2`@`localhost`';


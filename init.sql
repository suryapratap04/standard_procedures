-- Create a stored procedure
CREATE OR REPLACE PROCEDURE create_users_table()
LANGUAGE plpgsql
AS $$
BEGIN
    -- Create table if not exists
    CREATE TABLE IF NOT EXISTS users (
        id SERIAL PRIMARY KEY,
        name VARCHAR(100),
        email VARCHAR(150),
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

    -- Insert dummy data
    INSERT INTO users (name, email)
    VALUES 
        ('Surya Pratap Singh', 'surya@example.com'),
        ('vanda Jain', 'vanda@example.com'),
        ('Raghav Dave', 'raghav@example.com'),
        ('Surya Pratap Singh', 'surya@example.com'),
        ('vanda Jain', 'vanda@example.com'),

END;
$$;

-- Call the procedure
CALL create_users_table();
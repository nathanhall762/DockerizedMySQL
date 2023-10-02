-- Create a sample table
CREATE DATABASE IF NOT EXISTS sample_db;
USE sample_db;

CREATE TABLE IF NOT EXISTS dummy_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- Insert some dummy data
INSERT INTO dummy_data (name, email) VALUES
('John Doe', 'john@example.com'),
('Jane Smith', 'jane@example.com');

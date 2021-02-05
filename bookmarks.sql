-- First, remove the table if it exists
drop table if exists bookmarks;

-- Create the table anew
create table bookmarks (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    bookmark_url VARCHAR(255) NOT NULL,
    rating INTEGER NOT NULL CHECK (rating between 0 and 5),
    bookmark_desc TEXT 
);

--insert some test data
--Using a multi-row insert statement here
INSERT INTO bookmarks (title, bookmark_url, rating, bookmark_desc)
VALUES
    ('Google', 'http://www.google.com/', 5, 'Search Engine'),
    ('Stack Overflow', 'https://stackoverflow.com/', 5, 'Coding Forum'),
    ('w3 Schools HTML', 'https://www.w3schools.com/tags/default.asp', 5, 'HTML Reference Guide'),
    ('w3 Schools CSS', 'https://www.w3schools.com/cssref/default.asp', 5, 'CSS Reference Guide'),
    ('w3 Schools JavaScript', 'https://www.w3schools.com/jsref/default.asp', 5, 'JavaScript Reference Guide'),
    ('w3 Schools SQL', 'https://www.w3schools.com/sql/sql_ref_keywords.asp', 5, 'SQL Reference Guide'),
    ('Thinkful Dashboard', 'https://overview.thinkful.com/programs/FEWD-201', 5, 'Thinkful Dashboard for Software Engineering Flex'),
    ('npm Docs', 'https://docs.npmjs.com/', 5, 'npm packages and modules documentation'),
    ('Recipe Ideas', 'https://minimalistbaker.com/', 5, 'Minimalist Baker food blog for future recipe ideas'),
    ('Plant-based Recipes', 'https://sweetpotatosoul.com/', 5, 'Food blog for plant-based cooking');

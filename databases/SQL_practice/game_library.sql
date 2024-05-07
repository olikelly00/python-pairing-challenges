-- The job of this file is to reset all of our important database tables.
-- And add any data that is needed for the tests to run.
-- This is so that our tests, and application, are always operating from a fresh
-- database state, and that tests don't interfere with each other.

-- First, we must delete (drop) all our tables
DROP TABLE IF EXISTS developers;
DROP SEQUENCE IF EXISTS developers_id_seq;
DROP TABLE IF EXISTS games;
DROP SEQUENCE IF EXISTS games_id_seq;

-- Then, we recreate them
CREATE SEQUENCE IF NOT EXISTS developers_id_seq;
CREATE TABLE developers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE SEQUENCE IF NOT EXISTS games_id_seq;
CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    release_year INTEGER,
    developer_id INTEGER
);

-- Finally, we add any records that are needed for the tests to run
INSERT INTO developers (name) VALUES ('Atari Games');
INSERT INTO developers (name) VALUES ('Cave');
INSERT INTO developers (name) VALUES ('Delphine Software International');
INSERT INTO developers (name) VALUES ('Taito');

INSERT INTO games (title, release_year, developer_id) VALUES ('Gauntlet', 1984, 1);
INSERT INTO games (title, release_year, developer_id) VALUES ('Blasteroids', 1988, 1);
INSERT INTO games (title, release_year, developer_id) VALUES ('DoDonPachi', 1997, 2);
INSERT INTO games (title, release_year, developer_id) VALUES ('Flashback', 1992, 3);
INSERT INTO games (title, release_year, developer_id) VALUES ('Another World', 1991, 3);
INSERT INTO games (title, release_year, developer_id) VALUES ('Bubble Bobble', 1986, 4);
INSERT INTO games (title, release_year, developer_id) VALUES ('Puzzle Bobble', 1994, 4);

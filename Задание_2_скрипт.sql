CREATE TABLE IF NOT EXISTS Executor (
id SERIAL PRIMARY KEY,
name VARCHAR(70) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Genre (
id SERIAL PRIMARY KEY,
name VARCHAR(25) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
id SERIAL PRIMARY KEY,
name VARCHAR(50) UNIQUE NOT NULL,
year_of_issue INTEGER
);

CREATE TABLE IF NOT EXISTS Compilation (
id SERIAL PRIMARY KEY,
name VARCHAR(55) UNIQUE NOT NULL,
year INTEGER
);

CREATE TABLE IF NOT EXISTS Track (
id SERIAL PRIMARY KEY,
name VARCHAR(85) UNIQUE NOT NULL,
duration INTEGER,
album_id INTEGER NOT NULL REFERENCES Album(id),
compilation_id INTEGER NOT NULL REFERENCES Compilation(id)
);

CREATE TABLE IF NOT EXISTS GenreExecutor (
executor_id INTEGER NOT NULL REFERENCES Executor(id),
genre_id INTEGER NOT NULL REFERENCES Genre(id),
CONSTRAINT pk PRIMARY KEY (executor_id, genre_id)
);

CREATE TABLE IF NOT EXISTS ExecutorAlbum (
executor_id INTEGER NOT NULL REFERENCES Executor(id),
album_id INTEGER NOT NULL REFERENCES Album(id),
CONSTRAINT pk2 PRIMARY KEY (executor_id, album_id)
);










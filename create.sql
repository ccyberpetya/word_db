
-- Таблица жанров
CREATE TABLE Genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Таблица исполнителей
CREATE TABLE Artist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Таблица альбомов
CREATE TABLE Album (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT CHECK (release_year > 1800)
);

-- Таблица сборников
CREATE TABLE Compilation (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT CHECK (release_year > 1800)
);

-- Связь многие-ко-многим между исполнителями и жанрами
CREATE TABLE ArtistGenre (
    artist_id INT REFERENCES Artist(id) ON DELETE CASCADE,
    genre_id INT REFERENCES Genre(id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, genre_id)
);

-- Связь многие-ко-многим между исполнителями и альбомами
CREATE TABLE ArtistAlbum (
    artist_id INT REFERENCES Artist(id) ON DELETE CASCADE,
    album_id INT REFERENCES Album(id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, album_id)
);

-- Таблица треков
CREATE TABLE Track (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    duration INT NOT NULL CHECK (duration > 0), -- длительность в секундах
    album_id INT REFERENCES Album(id) ON DELETE CASCADE
);

-- Связь многие-ко-многим между сборниками и треками
CREATE TABLE CompilationTrack (
    compilation_id INT REFERENCES Compilation(id) ON DELETE CASCADE,
    track_id INT REFERENCES Track(id) ON DELETE CASCADE,
    PRIMARY KEY (compilation_id, track_id)
);
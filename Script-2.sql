CREATE TABLE IF NOT EXISTS Genres (
	genre_id VARCHAR(80) PRIMARY key
	);

CREATE TABLE IF NOT EXISTS Exutor (
	exutor_id VARCHAR(80) PRIMARY key,
	id varchar(80) PRIMARY KEY REFERENCES Exutor_genres(Genres)
	);

CREATE TABLE IF NOT EXISTS Exutor_charactiristiks (
	exutor_id VARCHAR(80) PRIMARY KEY REFERENCES Exutor(exutor_id),
	genres VARCHAR(60),
	exutor_name VARCHAR(60)
	);

CREATE TABLE IF NOT EXISTS Exutor_genres (
	exutor_id INTEGER REFERENCES Exutor(exutor_id),
	genres_id INTEGER REFERENCES Genres(genres_id),
	CONSTRAINT pk PRIMARY KEY (genres_id, exutor_id) 
	);
	
CREATE TABLE IF NOT EXISTS Album_Exutor (
	Album_id INTEGER REFERENCES Albums(Album_id),
	exutor_id INTEGER REFERENCES Exutor(exutor_id),
	CONSTRAINT pk PRIMARY KEY (Album_id, exutor_id)
	);

CREATE TABLE IF NOT EXISTS Albums (
	Album_id VARCHAR(80) PRIMARY key,
	Album varchar(80) 
	);

CREATE TABLE IF NOT EXISTS Album_Charactiristics (
	Album_id varchar(80) PRIMARY KEY references Albums(Album_id),
	Title VARCHAR(80),
	year_title VARCHAR(80),
	Exutor VARCHAR(80)
	);

CREATE TABLE IF NOT EXISTS Songs (
	Song_id varchar(80) PRIMARY KEY REFERENCES Albums(Album_id)
	);
	
CREATE TABLE IF NOT EXISTS Songs_charactiristics (
	charactiristics_id varchar(80) PRIMARY KEY REFERENCES Songs(Song_id),
	title varchar(80),
	Album varchar(80),
	Duration varchar(80)
	);

CREATE TABLE IF NOT EXISTS Collection (
	Collection_id varchar(80) PRIMARY key,
	Song_id varchar(80) PRIMARY KEY REFERENCES Songs(Song_id)
	);

CREATE TABLE IF NOT EXISTS Collection_charactiristics (
	Collection_id varchar(80) PRIMARY KEY REFERENCES Songs(Song_id),
	year_collection varchar(80),
	name_collection varchar(80)
	);
	
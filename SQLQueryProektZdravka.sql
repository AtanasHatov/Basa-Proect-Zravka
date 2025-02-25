CREATE DATABASE [CinemaCenter]

CREATE TABLE [Studios](
[studio_id] INT PRIMARY KEY IDENTITY (1,1),
[name] NVARCHAR(100) NOT NULL,
[address] NVARCHAR(150) NOT NULL,
[contact] NVARCHAR(10) NOT NULL,
[email] NVARCHAR(150) NOT NULL 
);

CREATE TABLE [Directors](
[director_id] INT PRIMARY KEY IDENTITY (1,1),
[name] NVARCHAR(50) NOT NULL,
[surname] NVARCHAR(50) NOT NULL,
[yearwork] INT NOT NULL,
[phone] NVARCHAR(10) NOT NULL,
[email] NVARCHAR(150) NOT NULL
);

CREATE TABLE [Films](
[film_id] INT PRIMARY KEY IDENTITY (1,1),
[studio_id] INT FOREIGN KEY REFERENCES Studios([studio_id]),
[director_id] INT FOREIGN KEY REFERENCES Directors([director_id]),
[title] NVARCHAR(150) NOT NULL,
[author] NVARCHAR(100) NOT NULL,
[year_published] INT NOT NULL
);

CREATE TABLE [Actors](
[actor_id] INT PRIMARY KEY IDENTITY (1,1),
[name] NVARCHAR(50) NOT NULL,
[surname] NVARCHAR(50) NOT NULL,
[yearwork] INT NOT NULL,
[phone] NVARCHAR(10) NOT NULL,
[email] NVARCHAR(150) NOT NULL
);

CREATE TABLE [FilmsActors](
[filmsactors_id] INT PRIMARY KEY IDENTITY(1,1),
[actor_id] INT FOREIGN KEY REFERENCES Actors([actor_id]),
[film_id] INT FOREIGN KEY REFERENCES Films([film_id]),
);
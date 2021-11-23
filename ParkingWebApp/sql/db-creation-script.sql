CREATE TABLE users(
    id INTEGER IDENTITY NOT NULL 
    , name varchar(200) not null
    , role varchar(2000 not null
    , login varchar(50)  not null
    , passwordHash varchar(200) not null
);

INSERT INTO users VALUES('ADIN', 'Administrator', 'admin', 123456);
INSERT INTO users VALUES('OPERADOR', 'Operador 1', 'Operador', 123456);


CREATE TABLE prices(
    id INTEGER IDENTITY NOT NULL 
, timeStamp TIMESTAMP NOT NULL
, new_price DOUBLE PRECISION NOT NULL
);


CREATE TABLE parking_periodos(
    id INTEGER IDENTITY NOT NULL 
, model varchar(50) not null
, plate varchar(7) not null
, begin_period TIMESTAMP not null
, end_period TIMESTAMP
, price DOUBLE PRECISION
);
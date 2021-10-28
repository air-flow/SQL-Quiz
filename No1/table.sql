CREATE TABLE users(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(10),
    address char(10)
);

INSERT INTO
    users(name, address)
VALUES
    ("AAA", "aaa");

INSERT INTO
    users(name, address)
VALUES
    ("BBB", "BBBBBB");

INSERT INTO
    users(name, address)
VALUES
    ("CCCC", "CCC");

INSERT INTO
    users(name, address)
VALUES
    ("aaa", "aaa");

INSERT INTO
    users(name, address)
VALUES
    ("bbb", "bbbbbb");

INSERT INTO
    users(name, address)
VALUES
    ("cccc", "ccc");

CREATE TABLE city(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(10),
    CountryCode char(3),
    Population int
);

INSERT INTO
    city(name, CountryCode, Population)
VALUES
    ("JP", "AAA", 100);

INSERT INTO
    city(name, CountryCode, Population)
VALUES
    ("Kabul", NULL, 77777);

INSERT INTO
    city(name, CountryCode, Population)
VALUES
    ("Herat", "BBB", 123456789);

SELECT
    *
FROM
    users AS t1
WHERE
    t1.name IN (
        SELECT
            t2.address
        FROM
            users AS t2
    );

SELECT
    *
FROM
    users
WHERE
    name IN ("a", "aa", "aaa")
    OR id = 2
    AND mod(id, 2) = 1;
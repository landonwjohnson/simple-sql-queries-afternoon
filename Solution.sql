--TABLE PERSON
    --1 Create table called person

        CREATE TABLE Person (
        id SERIAL PRIMARY KEY,
        name TEXT,
        age TEXT,
        height TEXT,
        city TEXT,
        favoriteColor TEXT
        );

    --2 Insert 5 People into your table

        INSERT INTO Person (name, age, height, city, favoriteColor)
        VALUES ('Landon', 26, 190.5, 'Provo', 'Green')

        INSERT INTO Person (name, age, height, city, favoriteColor)
        VALUES ('Colby', 22, 150.1, 'Provo', 'Pink')

        INSERT INTO Person (name, age, height, city, favoriteColor)
        VALUES ('Thomas', 26, 120.1, 'Provo', 'Blue')

        INSERT INTO Person (name, age, height, city, favoriteColor)
        VALUES ('Aaron', 25, 200.5, 'New York', 'Black')

        INSERT INTO Person (name, age, height, city, favoriteColor)
        VALUES ('Brian', 20, 101.8, 'Kirtland', 'Orange')

        INSERT INTO Person (name, age, height, city, favoriteColor)
        VALUES ('Preston', 27, 180.8, 'Miami', 'Green')

        INSERT INTO Person (name, age, height, city, favoriteColor)
        VALUES ('Meghan', 27, 150.1, 'Rexburg', 'Yellow')

        INSERT INTO Person (name, age, height, city, favoriteColor)
        VALUES ('Joel', 24, 199.1, 'Lindon', 'Red')

    --3 List people from Height from tallest to shortest
        SELECT * FROM Person ORDER BY height DESC

    --4 List people by Height from shortest to tallest
        SELECT * FROM Person ORDER BY height ASC

    --5 List people by Age from oldest to youngest
        SELECT * FROM Person ORDER BY age DESC

    --6 List all people in table older than 20
        SELECT age FROM Person 
        WHERE age > 20;

    --7 List all people that are exactly 18
        SELECT name, age FROM Person  
        WHERE age = 18;

    --8 List all people that are less than 20 and older than 30
        SELECT name, age FROM Person  
        WHERE age < 20 OR age > 30;

    --9 List all people that are not 27
        SELECT name, age FROM Person
        WHERE age != 27;

    --10 List all people where their favorite color is red
        SELECT name, favoriteColor FROM Person
        WHERE favoriteColor = 'Red';

    --11 List all the people where their favorite color is not red, and is not blue
        SELECT name, favoriteColor FROM Person
        WHERE favoriteColor != 'Blue' AND  favoriteColor != 'Red';

    --12 List all the people where their favorite color is orange or green
        SELECT * FROM Person
        WHERE favoriteColor = 'Orange' OR favoriteColor = 'Green';
    --13 List all the people where their favorite color is orange, green, or blue (use IN)
        SELECT * FROM Person
        WHERE favoriteColor IN ('Orange', 'Green', 'Blue')

    --14 List all the people where their favorite color is yellow or purple
        SELECT * FROM Person
        WHERE favoriteColor IN ('Purple', 'Yellow');


--TABLE ORDERS
    --1 Create a table called Orders
        CREATE TABLE Orders(
            PersonID INT,
            ProductName Text,
            ProductPrice float,
            Quantity INT
        )

    --2 Add 5 Orders to the Orders Table
        INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity)
        VALUES (1, 'Xbox', 499.99, 5);

        INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity)
        VALUES (2, 'Nintendo Switch', 299.99, 2);

        INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity)
        VALUES (3, 'Xbox One Controller', 45.99, 3);

        INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity)
        VALUES (4, 'The Eminem Show', 9.99, 1);

        INSERT INTO Orders(PersonID, ProductName, ProductPrice, Quantity)
        VALUES (5, 'Mtn Dew', 2.99, 3);
    
    --3 Select all records from the Orders Table
        SELECT * FROM Orders

    --4 Calculate the total number of products ordered
        SELECT SUM(Quantity) FROM Orders

    --5 Calculate the total order price
        SELECT SUM(ProductPrice * Quantity) FROM Orders

    --6 Calculate the total order price by a single PersonID
        SELECT SUM(ProductPrice * Quantity) FROM Orders 
        WHERE PersonID = 1;
--TABLE ARTIST
    --1 Create Artist Table
        CREATE TABLE Artist(
            ArtistId INT,
            Name TEXT
        )
    --2 Add 3 new Artists to Artist Table
        INSERT INTO Artist(ArtistId, Name)
        VALUES(1, 'Eminem');

        INSERT INTO Artist(ArtistId, Name)
        VALUES(2, 'Hollywood Undead');

        INSERT INTO Artist(ArtistId, Name)
        VALUES(3, 'Falling in Reverse');

        INSERT INTO Artist(ArtistId, Name)
        VALUES(4, '50 Cent');

        INSERT INTO Artist(ArtistId, Name)
        VALUES(5, 'Obie Trice');

        INSERT INTO Artist(ArtistId, Name)
        VALUES(6, 'Linkin Park');

        INSERT INTO Artist(ArtistId, Name)
        VALUES(7, 'Metro Station');

        INSERT INTO Artist(ArtistId, Name)
        VALUES(8, 'Breathe Carolina');

        INSERT INTO Artist(ArtistId, Name)
        VALUES(9, 'Travis Mills');

        INSERT INTO Artist(ArtistId, Name)
        VALUES(10, 'Jeffree Star');

    --3 Select 10 artists in reverse alphabetical order
        SELECT * FROM Artist ORDER BY Name DESC
        LIMIT 10

    --4 Select 5 Artists in alphabetical order
        SELECT * FROM Artist ORDER BY Name ASC
        LIMIT 5
    
    --5 Select all artists that start with the word "Black"
        SELECT * FROM Artist
        WHERE Name LIKE 'Black%'
    
    --6 Select all artists that contain the word "Black"
        SELECT * FROM Artist
        WHERE Name LIKE '%Black%'



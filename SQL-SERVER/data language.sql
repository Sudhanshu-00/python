/*1. Data Definition Language (DDL)
Defines and modifies the structure of database objects.

CREATE: Creates a new table, database, or object.

sql
CREATE TABLE Students (ID INT, Name VARCHAR(50));
ALTER: Modifies an existing database object.

sql
ALTER TABLE Students ADD Age INT;
DROP: Deletes a table or database.

sql
DROP TABLE Students;
TRUNCATE: Removes all rows from a table.

sql
TRUNCATE TABLE Students;
2. Data Manipulation Language (DML)
Handles data within tables.

INSERT: Adds new rows to a table.

sql
INSERT INTO Students (ID, Name, Age) VALUES (1, 'John', 20);
UPDATE: Modifies existing data in a table.

sql
UPDATE Students SET Age = 21 WHERE ID = 1;
DELETE: Removes rows from a table.

sql
DELETE FROM Students WHERE ID = 1;
3. Data Query Language (DQL)
Retrieves data from the database.

SELECT: Fetches data from one or more tables.

sql
SELECT * FROM Students WHERE Age > 18;
4. Data Control Language (DCL)
Manages access permissions.

GRANT: Provides user access to the database.

sql
GRANT SELECT ON Students TO User1;
REVOKE: Removes user access to the database.

sql
REVOKE SELECT ON Students FROM User1;
5. Transaction Control Language (TCL)
Controls transactions in the database.

COMMIT: Saves all changes made during the transaction.

sql
COMMIT;
ROLLBACK: Undoes changes made during the transaction.

sql
ROLLBACK;
SAVEPOINT: Sets a point within a transaction to roll back to.

sql
SAVEPOINT */
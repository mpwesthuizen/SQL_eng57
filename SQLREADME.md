# SQL README.md

## DML and DDL
'''SQL
-- creates database.

CREATE DATABASE <database_name>

-- using a database.

USE <database_name>

-- Altering the table by adding a column(DDL).

ALTER TABLE <table_name>
ADD <column_name datatype>

-- Removing a table(DDL).

DROP TABLE <table_name>

-- Creating a table(DDL).

CREATE TABLE <table_name>
(
    <Column_name Column_datatype>,
    <Column_name Column_datatype>
)

-- The main way to enter rows of data to the table.

INSERT INTO <table_name>
(
  <Column_names>
)
VALUES
(
  <one_row_of_data_formated_to_column_names_for_INSERT_INTO>
),
(
  <next_row_of_data_formated_to_column_names_for_INSERT_INTO>
),

-- Alternative values to table without the use of declaring column. Note - the order of values must match the order of the original table columns.

INSERT INTO <table_name>
VALUES
(
  <one_row_of_data>
)

-- Setting default values.
DEFAULT <set_default_value>

-- Setting null values (underfined value >> not '0' or 'empty string'). Note - sum types such as IDENTITY can't be null.
NULL

-- Setting not null values to prevent underfined values being used.
NOT NULL

-- updating data (DML). Note - leaving the WHERE colun_name= '' will set the new value for the whole table.

UPDATE<table_name>
SET<column_name=new_value>
WHERE<column_name=row_value>

-- 2h33m.

-- Delete's the redundant data of the foreign key when the primary key is deleted.

ON DELETE CASCADE

'''

## Different SQL types

- CHAR
- CHARSET
- VARCHAR
- INT
- FLOAT
- IDENTITY(<seed>,<increment>)
- BIT
- DATETIME
- DATE
- TIME
- DECIMAL
- NUMERIC
-

##  Queries
- SELECT
- FROM(table_name)
- WHERE
- SELECT
- COUNT(Column_name) AS 'what_you_want_to_call_output' --use primary keys for counting rows.
- SELECT TOP <range> <Column_name> --Need to sort the data first.
- AND
- OR
- SELECT DISTINCT -- Removes duplicates.
- '%x'
- 'x%'
- _
- [] -- Charlist.
- [^] --Charlist operator.
- IN
- BETWEEN
- GROUP BY <> HAVING <> IN (,)
- CONCAT('X','X')
-
-
-
-

## Joins and subqueries
- Inner join: queries two tables and shows data with matching entries in multiple tables.
- Left join: queries two tables showing the all the data of the first table and selective data of the second table.
- Right join:
- Full outer join:

## Different keys

1) Primary Keys: Unique data shared in relational databases.
2) Foreign Keys:
3) Candidate Keys:
4) Composite Keys:

## Normalisation

- Normalisation transforms a database into something more compact, easy to use and highly scalable by removing data redundancies such as removing duplicates.

- 3 Normal forms:
1) first normal form: Everything atomic, meaning single value for each row. For multiple values create a seperate table for the column where the rows have multiple data point. Note - this will mean repeating rows in second table for more than two datapoints.
No repitition of datapoints.

2)Second normal form: Must also satisfy first normal form. All non-key are fully functional dependency on the primary and not partly dependent. Common solutions involve the non key data is stored in a seperate table with a primary key that is a foreign key to fully dependent key.

3)Third normal form: Must satisfy second normal form. There is no transitive funtional dependency.

### Extra
- Research table aliases to create naming shortcuts.

#### Exam tips:
- focus on DML and DDL.
- 5 mins to 10 mins per query.
- SQL coding games.
- w3schools.com

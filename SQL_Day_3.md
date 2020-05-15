# DAY 3 README.md

## Operators
- '%' = remainder
- '/' = Division
- * = Multiply
- '+' = add
- '-' = subtract

- When using queries we can make calculations using the above operators to manipulate data. Example:
'''SQL SELECT UnitPrice, Quantity, Discount, (UnitPrice * (1 - Discount)) * Quantity AS "Net Total" FROM [Order Details]'''


## Sorting and order of output

- ORDER BY <"Name_of_data">: Orders data in ascent.
- ORDER BY <"Name_of_data"> DESC: Orders data in descent.


##TEXT and string
In the SELECT clause we can manipulate strings using the following:

- SUBSTRING(expression, start, length):
- CHARINDEX('string', 'column_name'): Searchs a string in the column_name.
- LEFT(string, <number>) or RIGHT(string, <number>): left = gives the first(last for RIGHT) <number> characters in the string.
- LTRIM or RTRIM: used to remove spaces at beginning(LTRIM) or end(RTRIM) of a string.
- LEN(<string>): gives the length of string.
- REPLACE(<string>,' ', ' _ '): replaces spaces with underscores in the string.
- UPPER(<string>) and LOWER(<string>): converts all charachters in the string to upper case or lower case.

## escaping with apostrophes
Use an extra quote mark to escape apostrophe such as, ''''. Example:
'''SQL SELECT ProductName FROM Products WHERE ProductName LIKE'%''%'
'''
This example searchs a table for product names with apostrophe.

## Date functions
Used to manipulate the dates in databases.

- GETDATE(): Returns current date and time as datetime value.
- SYSDATETIME(): returns the date and time of the computer that the sql server is running.
- DATEADD(<interval><number><date>): Adds a time/date interval to a date and then returns a new date. So date + (number * interval) = new Date.
- DATEDIFF(<interval> <date1> <date2>): Finds the difference between two dates and returns the result in terms of the interval specified.
- YEAR(<date>) AS YEAR: Formats the date as year.
- MONTH(<date>):Formats the date as month.
- DAY(<date>):Formats the date as DAY.

## Case Statements
Creates dynamic results based on dynamic data. You need to use single quotes for data and double quotes for column aliases.

## Aggreagate functions
Used to find total figures.
- sum(<Column Name>):Sums the rows.
- avg(<Column Name>):Averages the rows.
- min(<Column Name>): Returns the minimum row.
- max(<Column Name>): Returns the maximum row.
- count(<Column Name>):counts the rows.

Using the Group By clause with Aggreagate functions. Example:
'''SQL
SELECT CategoryID, AVG(ReorderLevel) AS "AVG Reorder level"
FROM Products
GROUP BY CategoryID
'''
Remember the Select clause must match the group by clause excluding aggregates.

## Subqueries
Are nested queries with a select statement. They are similar to Joins in the sense that they allow you to use data from two tables. They are useful as they show a clear process of data manipulation and are seen as alternatives to joins. However joins will be prefered when using data in more and more tables as more complex sub queries will need to be used and joins will become clearer. Example:
'''SQL
'''
Note: when debugging start with the outer query to best locate bugs.

- UNION & UNION ALL: adds data from one union to another union to form a column.

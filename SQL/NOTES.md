### SELECT and FROM in Every SQL Query

Every query will have at least a  `SELECT`  and  `FROM`  statement. The  `SELECT`   statement is where you put the  **`columns`**  for which you would like to show the data. The  `FROM` statement is where you put the  **`tables`**  from which you would like to pull data.



--------------------
### LIMIT
The  **`LIMIT`**  command is always the very last part of a query. An example of showing just the first 10 rows of the orders table with all of the columns might look like the following:

```
SELECT *
FROM orders
LIMIT 10;
```
We could also change the number of rows by changing the 10 to any other number of rows.

------------------
### ORDER BY

The **`ORDER BY`** statement allows us to sort our results using the data in any column.

> Pro-Tip
Remember  `DESC`  can be added after the column in your  **ORDER BY**  statement to sort in **descending** order, as the default is to sort in **ascending** order.

-------------

### WHERE
Using the **`WHERE`** statement, we can display _subsets_ of tables based on conditions that must be met. You can also think of the **`WHERE`** command as _filtering_ the data.

Common symbols used in  **`WHERE`**  statements include:

1.  `>`  (greater than)
    
2.  `<`  (less than)
    
3.  `>=`  (greater than or equal to)
    
4.  `<=`  (less than or equal to)
    
5.  `=`  (equal to)
    
6.  `!=`  (not equal to)

-------------------------------


### WHERE with Non-Numeric Data
The  **`WHERE`**  statement can also be used with non-numeric data. We can use the  **`=`**  and  **`!=`**  operators here. You need to be sure to use single quotes (just be careful if you have quotes in the original text) with the text data, not double quotes. Commonly when we are using  **`WHERE`**  with non-numeric data fields, we use the  **`LIKE`**,  **`NOT`**, or  **`IN`**  operators.



------------------------------

### Derived Columns
Creating a new column that is a combination of existing columns is known as a  **derived**  column (or "calculated" or "computed" column).  to give a name to your new column use the **`AS`**  keyword.


If you are deriving the new column from existing columns using a mathematical expression, then these familiar mathematical operators will be useful:

1.  `*`  (Multiplication)
2.  `+`  (Addition)
3.  `-`  (Subtraction)
4.  `/`  (Division)


`Order of Operations` : `PEMDAS`
1. **P**arentheses
2. **E**xponents
3. **M**ultiplication and  **D**ivision
4. **A**ddition and  **S**ubtraction



-----------------



### Logical Operators
1.  **`LIKE`**  This allows you to perform operations similar to using  **`WHERE`**  and  **`=`**, but for cases when you might  **`not`**  know  **`exactly`**  what you are looking for.
    
2.  **`IN`**  This allows you to perform operations similar to using  **`WHERE`**  and  **`=`**, but for more than one condition.
    
3.  **`NOT`**  This is used with  **`IN`**  and  **`LIKE`**  to select all of the rows  **`NOT LIKE`**  or  **`NOT IN`**  a certain condition.
    
4.  **`AND` & `BETWEEN`**  These allow you to combine operations where all combined conditions must be true.
    
5.  **`OR`**  This allows you to combine operations where at least one of the combined conditions must be true.


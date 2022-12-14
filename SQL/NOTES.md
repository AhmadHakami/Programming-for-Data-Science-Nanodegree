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

> **`Pro-Tip:`** 
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



_______________

> ###  LIKE 

|LIKE Operator | Description |
|--|--|
| WHERE CustomerName LIKE **'`a%`'** |Finds any values that start with `"a"` |
|WHERE CustomerName LIKE **'`%a`'**|Finds any values that end with `"a"`|
|WHERE CustomerName LIKE **'`%or%`'**|Finds any values that have `"or"` in any position|
|WHERE CustomerName LIKE **'`_r%`'**|Finds any values that have `"r"` in the second position|
|WHERE CustomerName LIKE **'`a_%`'**|Finds any values that start with `"a"` and are at least 2 characters in length|
|WHERE CustomerName LIKE **'`a__%`'**|Finds any values that start with `"a"` and are at least 3 characters in length|
|WHERE ContactName LIKE **'`a%o`'**|Finds any values that start with `"a"` and ends with `"o"`|

> use `[ ]` to choose many charachters, such as '**[**`abc`**]**%' meaning start with **a** or **b** or **c**, and using `!` for **not** , for example '**[**`!abc`**]**%' meaning not start with **a** or **b** or **c**

-------------------

> ### IN

The **`IN`** operator is useful for working with both numeric and text columns. This operator allows you to use an **`=`**, but for more than one item of that particular column. We can check one, two, or many column values for which we want to pull data, but all within the same query.

> **`Expert Tip:`** in most SQL environments you can use single or double quotation marks - and you may NEED to use double quotation marks if you have an apostrophe within the text you are attempting to pull.

------------------

> ### NOT

The **`NOT`** operator is an extremely useful operator for working with the previous two operators we introduced: `IN` and `LIKE`. By specifying **`NOT LIKE`** or **`NOT IN`**, we can grab all of the rows that do not meet particular criteria.

----------------------

> ### AND
The **`AND`** operator is used within a **`WHERE`** statement to consider more than one logical clause at a time. Each time you link a new statement with an **`AND`**, you will need to specify the column you are interested in looking at. You may link as many statements as you would like to consider at the same time. This operator works with all of the operations we have seen so far including arithmetic operators (`+`, `*`, `-`, `/`). **`LIKE`**, **`IN`**, and **`NOT`** logic can also be linked together using the **`AND`** operator.


-----------------------

> ### BETWEEN 
Sometimes we can make a cleaner statement using  **`BETWEEN`**  than we can use  **`AND`**. Particularly this is true when we are using the same column for different parts of our  **`AND`**  statement.

Instead of writing :

```
WHERE column >= 6 AND column <= 10
```

we can instead write, equivalently:

```
WHERE column BETWEEN 6 AND 10
```

------------------------------

> ### OR
Similar to the **`AND`** operator, the **`OR`** operator can combine multiple statements. Each time you link a new statement with an **`OR`**, you will need to specify the column you are interested in looking at. You may link as many statements as you would like to consider at the same time. This operator works with all of the operations we have seen so far including arithmetic operators (`+`, `*`, `-`, `/`), **`LIKE`**, **`IN`**, **`NOT`**, **`AND`**, and **`BETWEEN`** logic can all be linked together using the **`OR`** operator.


----------------------------------


### GROUP BY:

The `GROUP BY` clause will group records in a result set by identical values in one or more columns. It is often used in combination with aggregate functions to query information of similar records. The `GROUP BY` clause can come after `FROM` or `WHERE` but must come before any `ORDER BY` or `LIMIT` clause.

>  **`Expert Tips:`**
 The order of column names in your  **`GROUP BY`**  clause doesn???t matter???the results will be the same regardless. 

------------------

### DISTINCT:

**`DISTINCT`** is always used in **`SELECT`** statements, and it provides the unique rows for all columns written in the **`SELECT`** statement. Therefore, you only use **`DISTINCT`** once in any particular **`SELECT`** statement.


----------------------


### HAVING:
**`HAVING`**  is the ???clean??? way to filter a query that has been aggregated

```
SELECT account_id, SUM(total_amt_usd) AS sum_total_amt_usd
FROM orders
GROUP BY 1
HAVING SUM(total_amt_usd) >= 250000
```

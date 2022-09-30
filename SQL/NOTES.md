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

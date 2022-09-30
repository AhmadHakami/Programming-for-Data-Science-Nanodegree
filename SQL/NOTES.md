### SELECT and FROM in Every SQL Query

Every query will have at least a  `SELECT`  and  `FROM`  statement. The  `SELECT`   statement is where you put the  **`columns`**  for which you would like to show the data. The  `FROM` statement is where you put the  **`tables`**  from which you would like to pull data.



--------------------

### Using Upper and Lower Case in SQL

SQL queries can be run successfully whether characters are written in upper- or lower-case. In other words, SQL queries are not case-sensitive. The following query:

```
SELECT account_id
FROM orders
```

is the same as:

```
select account_id
from orders
```

which is also the same as:

```
SeLeCt AcCoUnt_id
FrOm oRdErS
```

**However**, you may have noticed that we have been capitalizing `SELECT` and `FROM`, while we leave table and column names in lower case. This is because even though SQL is case-insensitive,  **it is common and best practice to capitalize all SQL commands, like `SELECT` and `FROM`, and keep everything else in your query lower case.**

### What is a window function?

**Window Function:**  A window function is a calculation across a set of rows in a table that are somehow related to the current row. This means we’re typically:

1.  Calculating running totals that incorporate the current row or,
2.  Ranking records across rows, inclusive of the current one

------------------------
### Core Window Functions:

A window function is similar to aggregate functions combined with group by clauses but have one key difference:  **Window functions retain the total number of rows between the input table and the output table (or result).**  Behind the scenes, the window function is able to access more than just the current row of the query result. also allows users to compare one row to another without doing any joins. additionally effective when you want to measure trends over time or rank a specific column, and it retains the total number of records without collapsing or condensing any of the original datasets.

There are a few key terms to review as a part of understanding core window functions:

-   **PARTITION BY:**  A subclause of the OVER clause. I like to think of PARTITION BY as the GROUP BY equivalent in window functions. PARTITION BY allows you to determine what you’d like to “group by” within the window function. Most often, you are partitioning by a month, region, etc. as you are tracking changes over time.
-   **OVER:**  This syntax signals a window function and precedes the details of the window function itself.

-------------

### The sequence of Code for Window Functions:

Typically, when you are writing a window function that tracks changes or a metric over time, you are likely to structure your syntax with the following components:

1.  An aggregation function (e.g., sum, count, or average) + the column you’d like to track
2.  OVER
3.  PARTITION BY + the column you’d like to “group by”
4.  ORDER BY (optional and is often a date column)
5.  AS + the new column name



--------------------

### Group By vs. Window Functions

To emphasize the similarities and differences between group by/aggregation queries and window functions, let’s review the details below.

- **Similarities**

Both groups by/aggregation queries and window functions serve the same use case. Synthesizing information over time and often grouped by a column (e.g., a region, month, customer group, etc.)

- **Differences**

The difference between group by/aggregation queries and window functions is simple. The output of window functions retains all individual records whereas the group by/aggregation queries condense or collapse information.




> ### **Key Notes**
> 
>**1.** You can’t use window functions and standard aggregations in the same query. More specifically, **you can’t include window functions in a GROUP BY clause**.
>
>**2.** Feel free to use as many window functions as you’d like in a single query. E.g., if you’d like to have an average, sum, and count aggregate function that captures three metrics’ running totals, go for it.

-------------------
### Aggregates in Window Functions with and without ORDER BY:

The  `ORDER BY`  clause is one of two clauses integral to window functions. The  `ORDER`  and  `PARTITION`  define what is referred to as the “window”—the ordered subset of data over which calculations are made. Removing  `ORDER BY`  just leaves an unordered partition.

----------------------

### Ranking Window Functions:
There are three types of ranking functions that serve the same use case: how to take a column and rank its values. The choice of which ranking function to use is up to the SQL user, often created in conjunction with someone on a customer or business team.

-   **Row_number():**  Ranking is  **distinct**  amongst records even with ties in what the table is ranked against.
-   **Rank():**  Ranking is  **the same amongst tied values**  and ranks  **skip**  for subsequent values.
-   **Dense_rank():**  Ranking is  **the same amongst tied values**  and ranks  **do not skip**  for subsequent values.




-------------------


###  Aliases for Multiple Window Functions:

`Use Case:` **If you are planning to write multiple window functions that leverage the same PARTITION BY, OVER, and ORDER BY in a single query,**  leveraging aliases will help tighten your syntax.

#### Details of Aliases

-   A  **monthly_window**  alias function is defined at the end of the query in the  **WINDOW**  clause.
-   It is then called on  **each time**  an aggregate function is used within the SELECT clause.



<p align="center">
  <img src="https://cdn.sanity.io/images/oaglaatp/production/e0d2b575fa404eec7c9bedcae9c3818261ffe1ab-1200x800.png?w=1200&h=800&auto=format" />
</p>

### What is a window function?

**Window Function:**  A window function is a calculation across a set of rows in a table that are somehow related to the current row. This means we’re typically:

1.  Calculating running totals that incorporate the current row or,
2.  Ranking records across rows, inclusive of the current one

A window function is similar to aggregate functions combined with group by clauses but have one key difference:  **Window functions retain the total number of rows between the input table and the output table (or result).**  Behind the scenes, the window function is able to access more than just the current row of the query result.

-   **Partition by:**  A subclause of the OVER clause. Similar to GROUP BY.
-   **Over:**  Typically precedes the partition by that signals what to “GROUP BY”.
-   **Aggregates:**  Aggregate functions that are used in window functions, too (e.g., sum, count, avg).
-   **Row_number():**  Ranking function where each row gets a different number.
-   **Rank():**  Ranking function where a row could get the same rank if they have the same value.
-   **Dense_rank():**  Ranking function similar to rank() but ranks are not skipped with ties.
-   **Aliases:**  Shorthand that can be used if there are several window functions in one query.
-   **Percentiles:**  Defines what percentile a value falls into over the entire table.
-   **Lag/Lead:**  Calculating differences between rows’ values.




### The sequence of Code for Window Functions

Typically, when you are writing a window function that tracks changes or a metric over time, you are likely to structure your syntax with the following components:

1.  An aggregation function (e.g., sum, count, or average) + the column you’d like to track
2.  OVER
3.  PARTITION BY + the column you’d like to “group by”
4.  ORDER BY (optional and is often a date column)
5.  AS + the new column name





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

### Fundamentals to Know about Subqueries:

-   Subqueries must be fully placed inside parentheses.
-   Subqueries must be fully independent and can be executed on their own
-   Subqueries have two components to consider:
    -   Where it’s placed
    -   Dependencies with the outer/larger query

**A caveat with subqueries being independent:**

In almost all cases, subqueries are fully independent. They are "interim”/temp tables that can be fully executed on their own.  **However, there is an exception.**  When a subquery,  _typically in the form of a nested or inline subquery_, is correlated to its outer query, it cannot run independently. This is most certainly an edge case since correlated subqueries are rarely implemented compared to standalone, simple subqueries.

  

![Subquery Basics Explained Below](https://video.udacity-data.com/topher/2021/April/608b1e4a_screen-shot-2021-04-29-at-1.59.16-pm/screen-shot-2021-04-29-at-1.59.16-pm.png)



### Fundamentals to Know about Subqueries:

-   Subqueries must be fully placed inside parentheses.
-   Subqueries must be fully independent and can be executed on their own
-   Subqueries have two components to consider:
    -   Where it’s placed
    -   Dependencies with the outer/larger query

**A caveat with subqueries being independent:**

In almost all cases, subqueries are fully independent. They are "interim”/temp tables that can be fully executed on their own.  **However, there is an exception.**  When a subquery,  _typically in the form of a nested or inline subquery_, is correlated to its outer query, it cannot run independently. This is most certainly an edge case since correlated subqueries are rarely implemented compared to standalone, simple subqueries.

### Placement:

There are four places where subqueries can be inserted within a larger query:

-   With
-   Nested
-   Inline
-   Scalar

### Dependencies:

A subquery can be  **dependent**  on the outer query or  **independent**  of the outer query.


---------------

### Subquery Placement:

**With:**  This subquery is used when you’d like to “pseudo-create” a table from an existing table and  **visually scope**  the temporary table at the top of the larger query.

**Nested:**  This subquery is used when you’d like the temporary table to act as a filter within the larger query, which implies that it often sits within the  **where clause.**

**Inline:**  This subquery is used in the same fashion as the  **WITH**  use case above. However, instead of the temporary table sitting on top of the larger query, it’s embedded within the  **from clause.**

**Scalar:**  This subquery is used when you’d like to generate a scalar value to be used as a benchmark of some sort.

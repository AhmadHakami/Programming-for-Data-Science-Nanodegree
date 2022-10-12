### Subquery vs. JOINs 
| **Components** | **Subquery** | **JOINs**
|--|--| --| 
Combine data from multiple tables into a single result |❎|❎
Create a flexible view of tables stitched together using a key |✅|❎
Build an output to use in a later part of the query |❎|✅
Subquery Plan: What happens under the hood |❎|❎

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

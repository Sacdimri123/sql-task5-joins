# Task 5 — SQL Joins (Oracle SQL)

## Overview
This task demonstrates how to combine data from multiple tables using different join types in Oracle SQL: INNER JOIN, LEFT JOIN, RIGHT JOIN, and FULL OUTER JOIN. It also includes examples of filtering with joins and multi-table joins.

## Objectives
- Understand INNER JOIN for matching rows between tables.
- Apply LEFT JOIN to include all rows from the left table.
- Apply RIGHT JOIN to include all rows from the right table.
- Use FULL OUTER JOIN to include all rows from both sides.
- Filter results (e.g., members with no borrowings).
- Join multiple tables to enrich query results.

## Files
- `task5_joins_oracle.sql` — SQL script with all join queries.
- `screenshots/` — Query outputs for verification.

## Verification screenshots
- `task5_inner_books_authors.png` — Books with their authors (INNER JOIN).
- `task5_left_members_borrowings.png` — All members with borrowings if any (LEFT JOIN).
- `task5_right_members_borrowings.png` — All borrowings with member info if available (RIGHT JOIN).
- `task5_full_members_borrowings.png` — Full outer join of members and borrowings.
- `task5_members_without_borrowings.png` — Members who never borrowed a book.
- `task5_inner_borrowings_with_books.png` — Borrowings with member and book details.
- `task5_full_authors_books.png` — All authors and all books (FULL OUTER JOIN).

## Outcome
- Gained hands-on practice with INNER, LEFT, RIGHT, and FULL OUTER JOIN in Oracle SQL.
- Learned how to merge data from related tables.
- Identified unmatched records using outer joins.
- Produced reproducible query outputs with screenshots.

**Author:** Sachin Dimri  
**Internship:** SQL Developer Intern @ Elevate Labs

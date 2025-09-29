-- task5_joins_oracle.sql
-- Task 5: SQL Joins (Oracle-compatible)
SET DEFINE OFF;

------------------------------------------------------------
-- STEP 0: Confirm schema exists
------------------------------------------------------------
SELECT table_name FROM user_tables
WHERE table_name IN ('BOOKS','AUTHORS','BOOK_AUTHORS','MEMBERS','BORROWINGS')
ORDER BY table_name;

------------------------------------------------------------
-- STEP 1: INNER JOIN
-- Books with their authors
------------------------------------------------------------
SELECT b.book_id, b.title AS book_title, a.name AS author_name
FROM books b
INNER JOIN book_authors ba ON b.book_id = ba.book_id
INNER JOIN authors a ON ba.author_id = a.author_id
ORDER BY b.book_id;

------------------------------------------------------------
-- STEP 2: LEFT JOIN
-- Show all members, even if they haven’t borrowed any book
------------------------------------------------------------
SELECT m.member_id, m.name AS member_name, br.borrow_id, br.status
FROM members m
LEFT JOIN borrowings br ON m.member_id = br.member_id
ORDER BY m.member_id;

------------------------------------------------------------
-- STEP 3: RIGHT JOIN
-- Show all borrowings (right table), even if member is missing (theoretically)
-- Oracle supports RIGHT JOIN
------------------------------------------------------------
SELECT m.member_id, m.name AS member_name, br.borrow_id, br.status
FROM members m
RIGHT JOIN borrowings br ON m.member_id = br.member_id
ORDER BY br.borrow_id;

------------------------------------------------------------
-- STEP 4: FULL OUTER JOIN
-- Combine members and borrowings, showing rows even if no match in either side
------------------------------------------------------------
SELECT m.member_id, m.name AS member_name, br.borrow_id, br.status
FROM members m
FULL OUTER JOIN borrowings br ON m.member_id = br.member_id
ORDER BY NVL(m.member_id, br.member_id);

------------------------------------------------------------
-- STEP 5: LEFT JOIN with NULL check
-- Members who have never borrowed a book
------------------------------------------------------------
SELECT m.member_id, m.name AS member_name
FROM members m
LEFT JOIN borrowings br ON m.member_id = br.member_id
WHERE br.borrow_id IS NULL;

------------------------------------------------------------
-- STEP 6: INNER JOIN with multiple tables
-- Borrowings with member and book details
------------------------------------------------------------
SELECT br.borrow_id, m.name AS member_name, b.title AS book_title, br.status
FROM borrowings br
INNER JOIN members m ON br.member_id = m.member_id
INNER JOIN books b ON br.book_id = b.book_id
ORDER BY br.borrow_id;

------------------------------------------------------------
-- STEP 7: FULL OUTER JOIN example with authors
-- Show all authors and all books, even if no relationship
------------------------------------------------------------
SELECT a.name AS author_name, b.title AS book_title
FROM authors a
FULL OUTER JOIN book_authors ba ON a.author_id = ba.author_id
FULL OUTER JOIN books b ON ba.book_id = b.book_id
ORDER BY a.name, b.title;

-- End of Task 5

SELECT b.book_id, b.title AS book_title, a.name AS author_name
FROM books b
INNER JOIN book_authors ba ON b.book_id = ba.book_id
INNER JOIN authors a ON ba.author_id = a.author_id
ORDER BY b.book_id;

SELECT m.member_id, m.name AS member_name, br.borrow_id, br.status
FROM members m
LEFT JOIN borrowings br ON m.member_id = br.member_id
ORDER BY m.member_id;

SELECT m.member_id, m.name AS member_name, br.borrow_id, br.status
FROM members m
RIGHT JOIN borrowings br ON m.member_id = br.member_id
ORDER BY br.borrow_id;

SELECT m.member_id, m.name AS member_name, br.borrow_id, br.status
FROM members m
FULL OUTER JOIN borrowings br ON m.member_id = br.member_id
ORDER BY NVL(m.member_id, br.member_id);

SELECT m.member_id, m.name AS member_name
FROM members m
LEFT JOIN borrowings br ON m.member_id = br.member_id
WHERE br.borrow_id IS NULL;

SELECT br.borrow_id, m.name AS member_name, b.title AS book_title, br.status
FROM borrowings br
INNER JOIN members m ON br.member_id = m.member_id
INNER JOIN books b ON br.book_id = b.book_id
ORDER BY br.borrow_id;

SELECT a.name AS author_name, b.title AS book_title
FROM authors a
FULL OUTER JOIN book_authors ba ON a.author_id = ba.author_id
FULL OUTER JOIN books b ON ba.book_id = b.book_id
ORDER BY a.name, b.title;
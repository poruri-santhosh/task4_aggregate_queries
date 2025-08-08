-- Task 4: Aggregate Functions and Grouping on LibraryDB

-- 1. Total number of members
SELECT COUNT(*) AS total_members FROM Members;

-- 2. Average published year of books
SELECT AVG(PublishedYear) AS average_publish_year FROM Books;

-- 3. Total books per author
SELECT a.Name, COUNT(ba.BookID) AS total_books
FROM Authors a
JOIN BookAuthors ba ON a.AuthorID = ba.AuthorID
GROUP BY a.Name;

-- 4. Number of loans per member
SELECT m.Name, COUNT(l.LoanID) AS loans_count
FROM Members m
JOIN Loans l ON m.MemberID = l.MemberID
GROUP BY m.Name;

-- 5. Authors with more than 1 book
SELECT a.Name, COUNT(*) AS book_count
FROM BookAuthors ba
JOIN Authors a ON ba.AuthorID = a.AuthorID
GROUP BY a.Name
HAVING COUNT(*) > 1;

-- 6. Total loans per year
SELECT YEAR(LoanDate) AS loan_year, COUNT(*) AS total_loans
FROM Loans
GROUP BY loan_year
ORDER BY loan_year;

-- 7. Books published before 2000
SELECT COUNT(*) AS classic_books
FROM Books
WHERE PublishedYear < 2000;

--Retrieve Members and the Books They Borrowed
SELECT m."NAME", b."TITLE", br."BORROW_DATE", br."RETURN_DATE"
FROM "SYSTEM"."BORROWING_RECORDS" br
JOIN "SYSTEM"."MEMBERS" m ON br."MEMBER_ID" = m."MEMBER_ID"
JOIN "SYSTEM"."BOOKS" b ON br."ISBN" = b."ISBN";


--Retrieve Members and the Books They Reserved
SELECT r.RESERVATION_ID, m.Member_ID, m.Name, b.Title, r.Reservation_Date, r.Expiry_Date
FROM "SYSTEM"."RESERVATIONS" r
JOIN "SYSTEM"."BOOKS" b ON r.ISBN = b.ISBN
JOIN "SYSTEM"."MEMBERS" m ON r.MEMBER_ID = m.MEMBER_ID; 

--Retrieve Borrowed and Reserved Books by Members
SELECT m.Member_ID, m.Name, br.ISBN AS Borrowed_ISBN, b.Title AS Borrowed_Title, r.ISBN AS Reserved_ISBN, rb.Title AS Reserved_Title
FROM "SYSTEM"."MEMBERS" m
JOIN "SYSTEM"."BORROWING_RECORDS" br ON m.MEMBER_ID = br.MEMBER_ID
JOIN "SYSTEM"."BOOKS" b ON br.ISBN = b.ISBN
JOIN "SYSTEM"."RESERVATIONS" r ON m.MEMBER_ID = r.MEMBER_ID
JOIN "SYSTEM"."BOOKS" rb ON r.ISBN = rb.ISBN;

--Retrieve Available Books That Haven't Been Borrowed
SELECT b.ISBN, b.Title, b.Copies_Available
FROM "SYSTEM"."BOOKS" b
LEFT JOIN SYSTEM.BORROWING_RECORDS br ON b.ISBN = br.ISBN
WHERE br.ISBN IS NULL;

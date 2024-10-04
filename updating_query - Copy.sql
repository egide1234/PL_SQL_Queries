UPDATE "SYSTEM"."BOOKS"
SET "TITLE" = 'New Book Title',
    "AUTHOR" = 'New Author',
    "PUBLISHER" = 'New Publisher',
    "YEAR_PUBLISHED" = 2024,
    "GENRE" = 'New Genre',
    "COPIES_AVAILABLE" = 100
WHERE "ISBN" = '5';  -- Use the correct ISBN to identify the book


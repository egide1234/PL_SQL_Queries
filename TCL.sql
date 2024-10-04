-- Start a transaction (implicit when using DML commands)

-- Commit a transaction (save changes)
COMMIT;

-- Rollback a transaction (undo changes)
ROLLBACK;

-- Savepoint in a transaction (partial rollback)
SAVEPOINT BEFORE_UPDATE;

-- Example usage of rollback to a savepoint
UPDATE SYSTEM.BOOKS
SET COPIES_AVAILABLE = 5
WHERE ISBN = '978-0-06-112008-4';

-- Something goes wrong, so rollback to the savepoint
ROLLBACK TO BEFORE_UPDATE;

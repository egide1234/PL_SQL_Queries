CREATE A PDB Named plsql_class2024db
====================================
CREATE PLUGGABLE DATABASE plsql_class2024db
ADMIN USER GAS_PLSQLAUCA IDENTIFIED BY 123
ROLES=(DBA)
FILE_NAME_CONVERT=('C:\oracle1\oradata\XE\pdbseed', 'C:\oracle1\oradata\XE\plsql_class2024db');

//after writting those codes properly that pluggable will be created.

TO CHECK PDB STATUS
=======================
select pdb_name, status
from cdb_pdbs;

//here you will see the pdb you have created.

CREATION OF PLUGGABLE DATABASE CALLED GAS_TO_DELETE_PDB
=======================================================
CREATE PLUGGABLE DATABASE GAS_TO_DELETE_PDB
ADMIN USER GAS_PLSQLAUCA IDENTIFIED BY 123
ROLES=(DBA)
FILE_NAME_CONVERT=('C:\oracle1\oradata\XE\pdbseed', 'C:\oracle1\oradata\XE\GAS_TO_DELETE_PDB');

//after writting those codes properly, that pluggable will be created.


DELETION OF PLUGGABLE DATABASE CALLED GAS_TO_DELETE_PDB
========================================================
DROP PLUGGABLE DATABASE GAS_TO_DELETE_PDB INCLUDING DATAFILES;

//after writting those codes properly, that pluggable will be Dropped/Deleted.

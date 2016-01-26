What are databases for?
Databases are for storing large amounts of data with various attributes associated with them.  They are then put into groups that are all related somehow.  This is a database.

What is a one-to-many relationship?
____ belongs to a ____. ____ has many ____.  They go against DRY programming practices and should be avoided by creating a separate table for thoes values.

What is a primary key? What is a foreign key? How can you determine which is which?
Every item in a database has a primary key which can be referenced when accessing data from that specific key.  Foreign keys are keys from other tables that can be used to reference the main table.

How can you select information out of a SQL database? What are some general guidelines for that?
By using the SELECT command.  Some general guidelines are to make sure you specify which table you want to SELECT from.  It wont work if you don't specify.  I thought capitalization was a silly practice at first until I started to write long lines of SQL code.  I realized how important it is for readability very quickly.  That said make sure all SQL commands are capital for your own sake.
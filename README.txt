Learn-SQL-The-Hard-Way
======================

Need to review some SQL, this book (in progress) seems like a good way to do
it. The author uses a sqlite3 database. I'm going to use MySQL to solve the
problems instead.

Each problem is organized into one folder consisting of the necessary .sql
files.

## Exercise-0-The-Setup

install:

```bash
$ sudo apt install mysql-server
$ mysql -u root -p
```

```sql
%include <-=Exercise-0-The-Setup/create_database.sql=
```

## Exercise-1-Creating-Tables

```sql
%include <-=Exercise-1-Creating-Tables/create_table.sql=
```

## Exercise-2-Creating-A-MultiTable-Database

```sql
%include <-=Exercise-2-Creating-A-MultiTable-Database/multi-table.sql=
```

## Exercise-3-Inserting-Data

```sql
%include <-=Exercise-3-Inserting-Data/insert-values.sql=
```

## Exercise-4-Insert-Referential-Data

```sql
%include <-=Exercise-4-Insert-Referential-Data/insert-referential.sql=
```

## Exercise-5-Selecting-Data

```sql
%include <-=Exercise-5-Selecting-Data/select-statements.sql=
```

## Exercise-6-Select-Across-Many-Tables

```sql
%include <-=Exercise-6-Select-Across-Many-Tables/select-from-tables.sql=
```

## Exercise-7-Deleting-Data

```sql
%include <-=Exercise-7-Deleting-Data/deleting-data.sql=
```

## Exercise-8-Deleting-Using-Other-Tables

```sql
%include <-=Exercise-8-Deleting-Using-Other-Tables/deleting-and-matching.sql=
```

## Exercise-9-Updating-Data

```sql
%include <-=Exercise-9-Updating-Data/update-statements.sql=
```
## Exercise-10-Updating-Complex-Data

```sql
%include <-=Exercise-10-Updating-Complex-Data/update-complex.sql=
```

## Exercise-11-Replacing-Data

```sql
%include <-=Exercise-11-Replacing-Data/replace-data.sql=
```

## Exercise-12-Destroying-And-Altering-Tables

```sql
%include <-=Exercise-12-Destroying-And-Altering-Tables/recreate-person-table.sql=
```

```sql
%include <-=Exercise-12-Destroying-And-Altering-Tables/destroy-and-alter.sql=
```

## Exercise-13-Migrating-and-Evolving-Data

```sql
%include <-=Exercise-13-Migrating-and-Evolving-Data/migrate-evolve.sql=
```

## Exercise-14-Basic-Transactions

```sql
%include <-=Exercise-14-Basic-Transactions/transaction.sql=
```



/**
Agenda de contatos
@author walace oliveira
*/
 );

- Select database whenever it stops working whenever it start
use dbagenda;

- Check available tables
show tables;

- Command used to describe a table
Contact descriptions;

- command used to change the name of a field (header) of the table

change table contacts change name contact varchar(50) not null;
- Command used to add a new field to table for describable
change contacts from add table column obs varchar (250);

- command used to add a new field in a specific place we put it after the phone field
change the contacts in the table add a column phone2 varchar (15) after the phone;

- command used to modify data type and/or field validations
modify table contacts modify column fone2 varchar (20) not null;
change table contacts; modify varchar email (100);
change table contacts modify unique varchar (100) email;

- Command used to set the table after making a header change change the contact name
Contact descriptions;
- Command used to delete a table field
change contact table drop column obs;

- Command to remove a table
drop contacts from table;

/ *
CRUD (Create Read Update Delete)
These are the four basic operations that can be
perform in databases using the model
relational.
CREATE (insertion of the record (data) in the table)
READ (search for data in the table(s))
UPDATE (change of any record in the table)
DELETE (deleting a record from the table)
* /
- To save things in the database, edit or delete
/ * CRUD CREATE (insert) * /
- database registration fields
insert contacts (name, phone, email) values ​​('jose walace', '9468-75755', 'emailjosewalace@contato.com');
insert contacts (name, phone) values ​​('fernando', '465872-4564', 'fernando@gmail.com');
- new data entered within the table rule
insert contacts (name, phone, e-mail) values ​​('renata silva', '66656-4585', 'doresmaria@contato.com');
insert contacts (name, phone, email) values ​​('lucas', '57845-3656', 'lucas@gmail.com');
insert contacts (name, phone) values ​​('ricardo vieira', '948457-3568');
insert contacts (name, phone) values ​​('pamela laroso', '8685-9474');
insert contacts (name, phone, email) values ​​('tabata souza', '33845-2883', 'tabata@gmail.com');
insert contacts (name, phone, e-mail) values ​​('fernando de lima', '74586-2567', 'fernado@gmail.com');
insert contacts (name, phone, email) values ​​('catia fonseca', '456875-8697', 'catia@gmail.com');
insert contacts (name, phone, email) values ​​('elio vareas', '785687-4689', 'elio@gmail.com');



- READ (search for data in the table(s))


/ * CRUD READ (select) * /
- select all records from the table
select * from contacts;

- alphabetical order can select all lists in alphabetical order (asc)
select * in order of contacts by asc name;
- sort in a non-alphabetical alphabetical order to list (desc)
select * in order of contacts by desc name;
- Select a specific Data
select * in contacts where name = 'Ana Maria';
- doing a search by id
select * in contacts where id = 5;
- Select specific fields from the table
select the name of the contacts;
- for a custom search and sort alphabetically
select name, phone from contacts, order by name asc;
- filter names with a letter B
select * in contacts where name like 'B%';


/ * CRUD UPDATE (update) * /
- select all records from the table
select * from contacts;

- changing a specific data in the table, always using the id as the source of identification
update the set of contacts phone = '916266-22354' where id = 3;
update the set of contacts email = 'lucas@otlook.com' where id = 3;

- to change all the registration of a register all at once the id does not change
update the set of contacts name = 'lucas', phone = '6666666-66666', email = 'novotest@michael.com' where id = 3;

/ * crud DELETE * /
select * from contacts;
- deleting a record from the table
exclude from contacts where id = 3;
 

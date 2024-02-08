?--SQl server(Data Types,DDL,System Database, Acid )
--***************************************
 --DYnamic SQl 
Declare @id int --Define a Variable

Set @id =4		--Assign a value

print @id		--Print value in message format 
select  @id		--Print value in grid format 


Declare @id int

Set @id =4

print @id
select @id as id ,DATALENGTH(@id) as byte
--#################################
---Numeric data (Fixed length data type )
--Tinyint  length(0-255) 1 byte space 
	Declare @age tinyint
	set  @age =255
	select @age as Age--Alias(temporary name)
	print @age	--We never use Alias


	Declare @age tinyint
	set  @age =-0
	select @age as Age, DATALENGTH(@age) as Byte

--Smallint (-32,768 to 32,767) 2 bytes
	Declare @pin smallint 
	set @pin = 32767
	select @pin as Pin

	Declare @pin smallint 
	set @pin = -32767
	select @pin as Pin

--Int (-2,147,483,648 to 2,147,483,647),  4 byte 

	Declare @phnum int 
	set @phnum= 7645678
	select @phnum as Num, datalength(@phnum) as Byte
	
	Declare @phnum int 
	set @phnum= 1
	select @phnum as Num, datalength(@phnum) as Byte


--Bigint
--range(-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807)
--8 Byte 

	Declare @phnum bigint 
	set @phnum= 9223372036854775807
	select @phnum as Num, datalength(@phnum) as Byte, len(@phnum) as Length
	
	Declare @phnum bigint 
	set @phnum= 9
	select @phnum as Num, datalength(@phnum) as Byte, len(@phnum) as Length
--******************************************	
--Float  8byte 
	Declare @phnum float 
	set @phnum= 99
	select @phnum as Num, datalength(@phnum) as Byte

	Declare @ferari float 
	set @ferari= 7654.333
	select @ferari as Num, datalength(@ferari) as Byte

	Declare @phnum float 
	set @phnum=3922337203922337203922337203.775807
	select @phnum as Num, datalength(@phnum) as Byte

--Decimal range 38 (variable length data type)
Decimal(precision , scale)
	--precision = 2337203.775807
	--scale=.775807

 --RANGE  AND STORAGE
--Precision 1-9:	5 bytes
--Precision 10-19: 9 bytes
--Precision 20-28: 13 bytes
--Precision 29-38: 17 bytes
	Declare @phnum DECIMAL(38,2) 
	set @phnum=333213123.77
	select @phnum as Num, datalength(@phnum) as Byte



	Declare @phnum DECIMAL(38,6)  
	set @phnum=3922337203922337203922337203.775807
	select @phnum as Num, datalength(@phnum) as Byte


	Declare @phnum DECIMAL(38,6)  
	set @phnum=39223372092322237203923333337203.775807
	select @phnum as Num, datalength(@phnum) as Byte

--##############################################
--String in SQL
'123'
3
'abc@1'
5
'a'
 1

--char(fixed length data type)
--char(8000) 1 byte 1 char
declare @name char
set @name ='abc'
select @name as Name , DATALENGTH(@name) as Byte

declare @name char(5)
set @name ='123'
select @name as Name , DATALENGTH(@name) as Byte


declare @add char(6)
set @add ='Banglore'
select @add as Addres , DATALENGTH(@add) as Byte

declare @add char(8000)
set @add ='Banglore'
select @add as Addres , DATALENGTH(@add) as Byte


--Varchar(variable length data type)
--Varchar(8000) 1 byte 1 char

declare @name Varchar
set @name ='abc'
select @name as Name , DATALENGTH(@name) as Byte

declare @name Varchar(5)
set @name ='a'
select @name as Name , DATALENGTH(@name) as Byte

declare @name Varchar(5)
set @name ='abc'
select @name as Name , DATALENGTH(@name) as Byte

declare @name Varchar(5)
set @name ='a1@ c'
select @name as Name , DATALENGTH(@name) as Byte

declare @name Varchar(8000)
set @name ='a1@ c'
select @name as Name , DATALENGTH(@name) as Byte


declare @name Varchar(max)--when the length is unknown
set @name ='a1@ c'
select @name as Name , DATALENGTH(@name) as Byte

--Varchar(8000)  or Varchar(max)

--#########################################
--Nchar and Nvarchar
--N Unicode
--Nchar(fixed length data type)
--Nchar(4000) 2 byte 1 char
declare @name nchar(100) --100*2
set @name =N'????????'
select @name as Name , DATALENGTH(@name) as Byte

declare @name nchar(100) --100*2
set @name =N'????? ??? ?????'
select @name as Name , DATALENGTH(@name) as Byte


--NVarchar(variable length data type)
--NVarchar(4000) 2 byte 1 char

declare @name NVarchar(100)
set @name =N'????????'
select @name as Name , DATALENGTH(@name) as Byte

declare @name NVarchar(max)
set @name =N'????? ??? ?????'
select @name as Name , DATALENGTH(@name) as Byte


--***********************************
--Date 'YYYY-MM-DD', 3 byte 
	declare @dob date
	set @dob ='2023-12-23'
	select @dob as DOB , DATALENGTH(@dob) as Byte

	declare @dob date
	set @dob ='12-23-2023'
	select @dob as DOB , DATALENGTH(@dob) as Byte
	

--time 'HH:MM:SS'---MMMMmmm --5byte 
	declare @dob time
	set @dob ='01:51:16'
	select @dob as DOB , DATALENGTH(@dob) as Byte


	

--datetime ('YYYY-MM-DD HH:MM:SS')--mmm --8 byte 
	declare @dob datetime
	set @dob ='2023-12-23 01:51:16'
	select @dob as DOB , DATALENGTH(@dob) as Byte

	declare @dob datetimeoffset
	set @dob ='2023-12-23 01:51:16'
	select @dob as DOB , DATALENGTH(@dob) as Byte


--Bit/ boolean (1 or 0)
	declare @dob bit
	set @dob =1
	select @dob as DOB , DATALENGTH(@dob) as Byte

	declare @dob bit
	set @dob =0
	select @dob as DOB 

--###################################
--System Databases
https://learn.microsoft.com/en-us/sql/relational-databases/databases/system-databases?view=sql-server-ver16

--master Database	
	--Records all the system-level information for an instance of SQL Server.

--model Database	
	--Is used as the template for all databases created on the instance of SQL Server.
create database databaseName
--msdb Database	
	--Is used by SQL Server Agent for scheduling alerts and jobs.

--tempdb Database	
	--Is a workspace for holding temporary objects or intermediate result sets.

--Resource Database	
	--Is a read-only database that contains system objects that are included with SQL Server. 
	--Installation drive>:\Program Files\Microsoft SQL Server\MSSQL<version>.<instance_name>\MSSQL\Binn\ 
	--Name  =  mssqlsystemresource

--###################################

--DDL
Create database Demo
--Database 
	--Data file .mdf
	--Tlog file  .ldf
--ACID
	--Atomicity: Transactions are all or nothing.
	--Consistency: Transactions leave the database in a valid state.
	--Isolation: Transactions do not interfere with each other.
	--Durability: Once a transaction is committed, it remains so.


Declare 








































































































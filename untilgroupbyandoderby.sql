--CREATE TABLE MyRoomMates
--(FirstName Varchar(50),
--LastName Varchar(50),
--Age int,
--Salary int
--etc..,)


--SELECT TOP (1000) [ID]
--      ,[FirstName]
--      ,[LastName]
--      ,[Company]
--      ,[Age]
--      ,[Salary]
--      ,[Sex]
--      ,[place]
--      ,[DateofBirth]
--  FROM [SQL Class].[dbo].[MyRoomMates]
--INSERT into MyRoomMates Values
--(100, 'SAIDILEEP','YAMANI','SUTHERLAND',26,35000,'MALE','WINDSOR',14-10-1997),
--(101,'KousikReddy','Yeddula','CREOSPARK',26,88000,'MALE','REMOTE',1-11-1997),
--(102,'ROHITRAJ','KODIMALA','WALMART',27,95000,'MALE','Missusaga',11-05-1996),
--(103,'SANTHOSHREDDY','Vudem','CircleK',25,35000,'MALE','Lasalle',11-01-1998),
--(104,'SAIGOPI','TUMMALA','JobSoppe',28,45000,'MALE','Ottawa',05-10-1995),
--(105, 'BHARATKUMAR','MARRI','VPS',29,35000,'MALE','Walker',06-06-1994),
--(106,'Srivalli','Ravula','IBM',30,80000,'FEMALE','INDIA',06-08-1993),
--(107,'valli','Vula','SDP',36,90000,'FEMALE','USA',06-08-1987)


--Select FirstName
--from MyRoomMates
--where FirstName like '%S%V%'(>,=,<,AND, OR, LIKE, NULL, NOTNULL,In)
--Select *
--from MyRoomMates
----where Age<35 AND Salary>35000
--Where Age>30 OR Salary>40000

--Select Age, Count(Age) as Total
--From MyRoomMates
--Group by Age
--Order by Total Desc

--Select DISTINCT(Sex)
--From MyRoomMates

--Select Min(Salary)(Avg, Max) Same for everything
--From MyRoomMates
--
--(Update a Table)
--Update MyRoomMates
--Set FirstName='Lakshmi', LastName='Vuyyur'
--Where ID= 107;
--
--(Deleting a Row)
--Delete from MyRoomMates
--Where FirstName='Lakshmi'
--
--(Update a Feild)
--Update MyRoomMates 
--Set FirstName='Sreeja'
--Where ID=107;
--DROP TABLE Employeedetails (this is used to delete the Entire Table)
--
--(How we use case in SQL which is similar to If Else in C lanuage)
--SELECT *,
--    CASE 
--        WHEN EmployeePay = 92290 THEN 1 
--        ELSE 0 
--    END AS noofEmployeewithmaxsalary
--FROM EmployeeSalary;

--
--(how to do a Count in SQL)
--Select Count(*)
--From EmployeeSalary
--Where EmployeePay<=1000000;
--
--(How to add a New Column in the Table)
--ALTER TABLE EmployeeSalary
--Add noofEmployeewithmaxsalary int
--
--(Delete a column in SQL)
--ALTER TABLE EmployeeSalary
--Drop COLUMN noofEmployeewithmaxsalary;
--
--(Inner Join/Full Outer Join, Left Outer Join/Right Outer Join)
--Select *
--From SQL Class.dbo.EmployeeSalary1
--Full Outer join SQL Class.dbo.MyRoomMates
--ON EmployeeSalary1.ID= MyRoomMates.ID
--
--(UNION, UNION ALL) Union doesnot display duplicates, where as union all displays everything.
--Select *
--From EmployeeSalary
--UNION ALL
--Select *
--From EmployeeSalary1
--
--
--CASE WHEN END
--Select *,
--CASE
--	WHEN Salary Between 30000 And 50000 Then Salary + (Salary *0.50)
--	WHEN Salary Between 50000 And 80000 Then Salary + (Salary *0.10)
--	ELSE Salary + (Salary*0.1) 
--	END AS BonusPay
--From MyRoomMates
--Order By Salary
--
--Creates a CTE (COMMON TABLE EXPRESSION as a Temporary table which is not stored anywhere its a temporary table wich stores the data temporarily when the program is executed)
-- This is Similar to the Function in C language
--With CTE_Employee1 As
--(
--Select Salary, FirstName
--From [SQL Class].dbo.MyRoomMates
--Full Join [SQL Class].dbo.EmployeeSalary1
--ON MyRoomMates.ID=EmployeeSalary1.ID
--)
--Select *
--From CTE_Employee1
--
--Creating a Temp Table that can be called Multiple Times unlink CTEs where it can called just once,
----Create Table #Temp_Employee1(
--FullName Varchar(50),
--Age int,
--Salary int,
--JobTitle Varchar(50)
--)
--Insert into #Temp_Employee1 Values
--('SAIDILEEPYAMANI',26,60000,'Dataanalyst'),
--('RAM',27,65000,'JavaDeveloer')
--Select *
--From #Temp_Employee1
--You can add an other entire table with the same colums by inserting the entire column into the table.
--Insert into #Temp_Employee1(
--Select *
--From EmployeeData
)







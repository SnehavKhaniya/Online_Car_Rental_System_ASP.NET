# Online_Car_Rental_System_ASP.NET
ONLINE CAR RENTAL SYSTEM
ASP.NET with C# project 

***
* Download Zip file and extract it.
* Open this project's .sln file in VISUAL STUDIO
* In App_Data folder, add a SQLserver database.
* Copy this database's connection string(it is inside properties of this database).
* Inside Models/functions.cs file, paste this connection string in 'ConnStr' variable inside constructor.

![image](https://github.com/SnehavKhaniya/Online_Car_Rental_System_ASP.NET/assets/138969953/006405f2-0fcf-4cd2-8ec0-dd6810956b31)

***
DataBase files -> goes inside App_Data folder's SQL server Database 

*CarTb1:
CREATE TABLE [dbo].[CarTb1] (
    [CPlateNum] VARCHAR (50) NOT NULL,
    [Brand]     VARCHAR (50) NOT NULL,
    [Model]     VARCHAR (50) NOT NULL,
    [Price]     INT          NOT NULL,
    [Color]     VARCHAR (50) NOT NULL,
    [Status]    VARCHAR (15) NOT NULL,
    PRIMARY KEY CLUSTERED ([CPlateNum] ASC)
);

*CustomerTb1:
CREATE TABLE [dbo].[CustomerTb1] (
    [CustId]       INT          IDENTITY (1000, 1) NOT NULL,
    [CustName]     VARCHAR (50) NOT NULL,
    [CustAdd]      VARCHAR (50) NOT NULL,
    [CustPassword] VARCHAR (50) NOT NULL,
    [CustPhone]    VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([CustId] ASC)
);


*RentTb1:
CREATE TABLE [dbo].[RentTb1] (
    [RentId]     INT          IDENTITY (500, 1) NOT NULL,
    [Car]        VARCHAR (50) NOT NULL,
    [Customer]   INT          NOT NULL,
    [RentDate]   VARCHAR (50) NOT NULL,
    [ReturnDate] DATE         NOT NULL,
    [Fees]       INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([RentId] ASC),
    CONSTRAINT [FK1] FOREIGN KEY ([Car]) REFERENCES [dbo].[CarTb1] ([CPlateNum]),
    CONSTRAINT [FK2] FOREIGN KEY ([Customer]) REFERENCES [dbo].[CustomerTb1] ([CustId])
);


*ReturnTb1:
CREATE TABLE [dbo].[ReturnTb1] (
    [RetId]    INT          IDENTITY (300, 1) NOT NULL,
    [Car]      VARCHAR (50) NOT NULL,
    [Customer] INT          NOT NULL,
    [Date]     DATE         NOT NULL,
    [Delay]    INT          NOT NULL,
    [Fine]     INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([RetId] ASC),
    CONSTRAINT [FK3] FOREIGN KEY ([Car]) REFERENCES [dbo].[CarTb1] ([CPlateNum]),
    CONSTRAINT [FK4] FOREIGN KEY ([Customer]) REFERENCES [dbo].[CustomerTb1] ([CustId])
);


***
First open SignUp.aspx or SignUp.aspx.cs file,
then start debugging(by selecting IIS Express option).

*
for new user you have to sign up using name, address, password and phone no.

for already exist user, need to login.

-> user can see available cars and book them.(There is Dummy PAYMENT system)
-> in Your Rentals page user can see their rents until now rented.

*
for Admin,
Admin have to login using hard-coded username and password.
Name: Admin
Password: Admin

-> Admin can do CRUD operations on Cars and Customers
-> Admin can Return back a returned car and apply fine according to delay in returning a car.
-> Admin can see All Rented & Returned Cars.

CREATE TABLE Transaction
(
Transaction_ID int NOT NULL AUTO_INCREMENT,
TPayment_ID int NOT NULL,
Pin int NOT NULL,
Customer_Type char(50),
Member_Pin int,
Customer_Name char(50),
Customer_Addr char(200),
PostCode char(20),
Phone_No char(11),
Creation_Date date,
Cust_Language char(20),
Cust_Level char(20),
Payment_Status char(20),
PRIMARY KEY (Transaction_ID),
Foreign Key (TPayment_ID) references Payment(Payment_ID)
);

CREATE INDEX IDX_Pin
on Transaction (Pin);


CREATE TABLE Payment
(
Payment_ID int NOT NULL AUTO_INCREMENT,
Card_Type char(20),
Card_No char(18),
Sec_Code char(5),
Exp_Date date,
Payment_Amount double,
Primary Key (Payment_ID)
);

CREATE TABLE Location
(
Location_ID int NOT NULL AUTO_INCREMENT,
Room_No char(50),
Mac_Address char(50),
PRIMARY KEY (Location_ID)
);

CREATE TABLE Audio
(
Audio_ID int NOT NULL AUTO_INCREMENT,
Exhibit_No int,
A_Level char(20),
Filename char(100),
Track_Info char(200),
Date_Created date,
A_Language char(20),
Room_No int,
PRIMARY KEY (Audio_ID)
);

CREATE INDEX IDX_Room_No
on Audio (Room_No);


CREATE INDEX IDX_A_Level
on Audio (A_Level);



CREATE TABLE Administrator
(
User_ID int NOT NULL AUTO_INCREMENT,
Username char(20),
Password char(50),
Access_Right int,
PRIMARY KEY (User_ID)
);


CREATE TABLE Price
(
Price_ID int NOT NULL AUTO_INCREMENT,
Price double,
Audio_Level char(50),
PRIMARY KEY (Price_ID)
);


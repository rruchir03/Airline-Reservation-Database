create database airline ;
use airline;
Create table passenger
(P_ID numeric(10) not null,
First_Name Varchar(20) not null,
Last_Name Varchar(20) not null,
P_age numeric(3),
Residence Varchar(40) not null,
Phone_no Numeric(10) not null,
Relative_phone_no numeric(10),
Email_Address varchar(20) not null,
Passport_no varchar(10) not null,
Ticket_PNR varchar(10),
constraint passenger_up unique (passport_no),
constraint passenger_pk primary key (P_ID)
);
Create table Schedule
(
Schedule_Id numeric(10) not null,
Depar_location varchar(50) not null,
Depar_date Date not null,
Depar_time time not null,
Arri_location Varchar(50) not null,
Arri_date date not null,
Arri_time time not null,
constraint schedule_pk primary key (schedule_ID)
);
Create table Journey
(
Journey_Id numeric(10) not null,
Meal varchar(10) not null,
Other_info Varchar(100),
constraint journey_pk primary key (Journey_ID)
);
Create table Ticket
(
Ticket_PNR Varchar(10) not null,
Journey_Id numeric(10) not null,
Schedule_ID numeric(10) not null,
Fair int not null,
Class Varchar(10) not null,
Status Varchar(15) not null,
constraint ticket_pk primary key (ticket_PNR)
);
Create table Flight
(
Flight_no varchar(5) not null,
Schedule_id numeric(10) not null,
Journey_id numeric(10) not null,
constraint Flight_pk primary key (flight_no)
);

INSERT INTO Passenger
(P_ID,First_Name,Last_Name,P_age,Residence,Phone_no,Relative_phone_no,Email_Address, Passport_no,Ticket_PNR)
VALUES
(6458972345,'Vaibhav','Rawal',17,'Delhi',5674328896,6314895627,'
vaibhav@gmail.com','D568749125','PNQ001');
INSERT INTO Passenger
(P_ID,First_Name,Last_name,P_age,Residence,Phone_no,Relative_phone_no,Email_Address,Passport_no,Ticket_PNR)
VALUES
(6458972346,'Ram','Sharma',16,'Mumbai',6314895627,2467831435,'ra
m@gmail.com','E364785521','PNQ002');
INSERT INTO Passenger
(P_ID,First_Name,Last_name,P_age,Residence,Phone_no,Relative_phone_no,Email_Address,Passport_no,Ticket_PNR)
VALUES
(6458972347,'Sham','Sharma',30,'Mumbai',2467831596,9875546258,'s
ham@gmail.com','F578942451','PNQ003');
INSERT INTO Passenger
(P_ID,First_Name,Last_name,P_age,Residence,Phone_no,Relative_phone_no,Email_Address,Passport_no,Ticket_PNR)
VALUES
(6458972348,'Raghav','Yadav',35,'Indore',6489521374,9865421374,'
raghav@gmail.com','G246458713','PNQ004');
INSERT INTO Passenger
(P_ID,First_Name,Last_name,P_age,Residence,Phone_no,Relative_phone_no,Email_Address,Passport_no,Ticket_PNR)
VALUES
(6458972349,'Rishab','Mathur',30,'Delhi',9547623815,9658423614,'
rishab@gmail.com','H341578426','PNQ005');
INSERT INTO Schedule (Schedule_Id, Depar_location, Depar_date,
Depar_time, Arri_location, Arri_date, Arri_time)
VALUES (201, 'Delhi', '2021-10-25', '06:30:00', 'Dubai', '2021-10-25','9:00:00');
INSERT INTO Schedule (Schedule_Id, Depar_location, Depar_date,
Depar_time, Arri_location, Arri_date, Arri_time)
VALUES (202, 'Dubai', '2021-10-26', '10:30:00', 'Delhi', '2021-10-25','12:00:00');
INSERT INTO Schedule (Schedule_Id, Depar_location, Depar_date,
Depar_time, Arri_location, Arri_date, Arri_time)
VALUES (203, 'Delhi', '2021-10-26', '06:30:00', 'New York',
'2021-10-27','2:00:00');
INSERT INTO Schedule (Schedule_Id, Depar_location, Depar_date,
Depar_time, Arri_location, Arri_date, Arri_time)
VALUES (204, 'New York', '2021-10-28', '12:30:00', 'Delhi',
'2021-10-29','14:00:00');
INSERT INTO Schedule (Schedule_Id, Depar_location, Depar_date,
Depar_time, Arri_location, Arri_date, Arri_time)
VALUES (205, 'Delhi', '2021-10-30', '15:30:00', 'Mumbai', '2021-
10-30','17:00:00');
INSERT INTO Journey (Journey_Id, Meal, Other_info)
VALUES (513, 'YES', 'Require Wheelchair');
INSERT INTO Journey (Journey_Id, Meal, Other_info)
VALUES (514, 'NO', NULL);
INSERT INTO Journey (Journey_Id, Meal, Other_info)
VALUES (515, 'YES', 'Require Wheelchair');
INSERT INTO Journey (Journey_Id, Meal, Other_info)
VALUES (516, 'NO', 'Require Wheelchair');
INSERT INTO Journey (Journey_Id, Meal, Other_info)
VALUES (517, 'YES', NULL);
INSERT INTO Ticket (Ticket_PNR, Journey_Id,Schedule_ID, Fair,
Class, Status)
VALUES ('PNQ001',513, 201, 25000,'ECONOMY','CONFIRMED');
INSERT INTO Ticket (Ticket_PNR, Journey_Id,Schedule_ID, Fair,
Class, Status)
VALUES ('PNQ002', 514, 202, 55000,'BUSINESS','CONFIRMED');
INSERT INTO Ticket (Ticket_PNR, Journey_Id,Schedule_ID, Fair,
Class, Status)
VALUES ('PNQ003', 513, 203, 85000,'FIRST','CONFIRMED');
INSERT INTO Ticket (Ticket_PNR, Journey_Id,Schedule_ID, Fair,
Class, Status)
VALUES ('PNQ004', 515, 204, 20000,'ECONOMY','NOT CONFIRMED');
INSERT INTO Ticket (Ticket_PNR, Journey_Id,Schedule_ID, Fair,
Class, Status)
VALUES ('PNQ005',517, 205, 25000,'ECONOMY','NOT CONFIRMED');
INSERT INTO Flight (Flight_no, Schedule_ID, Journey_ID)
VALUES ('AI407',201,513);
INSERT INTO Flight (Flight_no, Schedule_ID, Journey_ID)
VALUES ('AI408',202,514);
INSERT INTO Flight (Flight_no, Schedule_ID, Journey_ID)
VALUES ('AI409',203,516);
INSERT INTO Flight (Flight_no, Schedule_ID, Journey_ID)
VALUES ('AI410',202,517);
INSERT INTO Flight (Flight_no, Schedule_ID, Journey_ID)
VALUES ('AI411',205,514);



select * from passenger;

select * from schedule;

select * from Ticket;

select * from Flight;

select * from Journey;

select * from Passenger order by First_Name asc;

select depar_date, depar_time from schedule where
schedule_id=(select schedule_id from ticket where
ticket_PNR='PNQ002');

select * from Flight where Journey_ID > 500 union
select * from Journey where Meal = 'YES' ; 

select * from Flight where Journey_ID = 514 union all
select * from Journey where Meal = 'NO' ;

 

create view DetailsView as
select First_name, P_id
from Passenger
where P_age < 18;


create view FairView as
select Fair,Status
from Ticket
where Journey_ID=  513;


select passenger.First_Name as "Passenger Name",
ticket.class as "Class" from ticket inner join passenger
on passenger.Ticket_PNR=ticket.ticket_PNR;

select ticket_pnr from ticket where status='NOT
CONFIRMED';

select passenger.First_Name as "Passenger Name" from
passenger inner join ticket on
ticket.ticket_PNR=passenger.Ticket_PNR and
ticket.fair=(select max(fair) from ticket);

select passenger.first_name as "Passenger Name",
passenger.passport_no as "Passport Number", ticket.class
as "Class" ,ticket.Ticket_pnr as "Ticket PNR" from
passenger left join ticket on
Ticket.ticket_pnr=passenger.ticket_pnr order by class;

select * from passenger where phone_no like '64%';

select * from passenger where relative_phone_no like
'%74';

select first_name as "Name", phone_no as "Phone Number"
from passenger where ticket_pnr=(select ticket_pnr from
ticket where schedule_id=(select schedule_id from
schedule where arri_location='Dubai'));

select count(P_ID) as "Number of Passengers" from
passenger;

select flight_no from flight where schedule_id=(select
schedule_id from schedule where Arri_location='New
York');

select flight_no from flight where schedule_id=(select
schedule_id from schedule where Depar_location='Dubai'
and depar_date<'2021-10-30');

select first_name as "Passenger Name" from passenger
where first_name like 'r%b';

select * from passenger where residence='Mumbai';

select Ticket_pnr from passenger where
first_name='Raghav';

UPDATE `airline`.`passenger` SET `P_age` = '36' WHERE (`P_ID` = '6458972348');

UPDATE `airline`.`passenger` SET `P_ID` = '6458972340' WHERE (`P_ID` = '6458972348');

alter table Passenger rename column Phone_no TO Contact_no;

SELECT*
FROM Passenger 
WHERE residence='Mumbai'
GROUP BY Passport_no
ORDER BY Ticket_pnr;

SELECT Arri_location, COUNT(*) as Num_Flights
FROM Schedule
GROUP BY Arri_location;

SELECT Class, AVG(Fair) as Avg_Fare
FROM Ticket
WHERE Status = 'Available'
GROUP BY Class
HAVING COUNT(*) > 50;

UPDATE Passenger
SET P_age = 30
WHERE Passport_no = 'ABC123';

UPDATE Schedule
SET Depar_time = '11:00:00'
WHERE Schedule_Id IN
(SELECT Schedule_Id FROM Flight WHERE Flight_no = 'FL123');

Describe table Passenger ;

Describe table Schedule ;

Desc table flight ; 

Desc table journey ;

Desc table Ticket ;

SELECT *
FROM Ticket
RIGHT JOIN Passenger
ON Ticket.Ticket_PNR = Passenger.Ticket_PNR;

SELECT Passenger.*, Ticket.Ticket_PNR
FROM Passenger
RIGHT JOIN Ticket
ON Passenger.Ticket_PNR = Ticket.Ticket_PNR;

SELECT *
FROM Flight
RIGHT JOIN Ticket ON Flight.Schedule_id = Ticket.Schedule_id AND Flight.Journey_id = Ticket.Journey_id
RIGHT JOIN Schedule ON Ticket.Schedule_id = Schedule.Schedule_id
RIGHT JOIN Journey ON Ticket.Journey_id = Journey.Journey_id;

SELECT Passport_no
FROM Passenger
INNER JOIN Ticket ON Passenger.Ticket_PNR = Ticket.Ticket_PNR
WHERE Ticket.Journey_Id = 513
AND Passport_no NOT IN (
    SELECT Passport_no
    FROM Passenger
    INNER JOIN Ticket ON Passenger.Ticket_PNR = Ticket.Ticket_PNR
    WHERE Ticket.Journey_Id = 514
);

SELECT Contact_no
FROM Passenger
INNER JOIN Ticket ON Passenger.Ticket_PNR = Ticket.Ticket_PNR
INNER JOIN Flight ON Ticket.Schedule_Id = Flight.Schedule_id
WHERE Flight.Journey_id = 513
AND Contact_no NOT IN (
    SELECT Contact_no
    FROM Passenger
    INNER JOIN Ticket ON Passenger.Ticket_PNR = Ticket.Ticket_PNR
    INNER JOIN Flight ON Ticket.Schedule_Id = Flight.Schedule_id
    WHERE Flight.Journey_id = 514
);

SELECT Contact_no
FROM Passenger
INNER JOIN Ticket ON Passenger.Ticket_PNR = Ticket.Ticket_PNR
INNER JOIN Flight ON Ticket.Schedule_Id = Flight.Schedule_id
WHERE Flight.Journey_id = 513
AND Contact_no IN (
    SELECT Contact_no
    FROM Passenger
    INNER JOIN Ticket ON Passenger.Ticket_PNR = Ticket.Ticket_PNR
    INNER JOIN Flight ON Ticket.Schedule_Id = Flight.Schedule_id
    WHERE Flight.Journey_id = 514
);


SELECT Passport_no
FROM Passenger
INNER JOIN Ticket ON Passenger.Ticket_PNR = Ticket.Ticket_PNR
WHERE Ticket.Journey_Id = 513
AND Passport_no IN (
    SELECT Passport_no
    FROM Passenger
    INNER JOIN Ticket ON Passenger.Ticket_PNR = Ticket.Ticket_PNR
    WHERE Ticket.Journey_Id = 514
);


SELECT Journey_Id
FROM Ticket
INNER JOIN Passenger ON Ticket.Ticket_PNR = Passenger.Ticket_PNR
WHERE Passenger.Email_Address LIKE 'ra%'
AND Journey_Id IN (
    SELECT Journey_Id
    FROM Ticket
);

DELIMITER //

CREATE TRIGGER update_ticket_status AFTER UPDATE ON Ticket
FOR EACH ROW
BEGIN
    IF NEW.Status <> OLD.Status THEN
        INSERT INTO Ticket_Status_History (Ticket_PNR, Status, Change_Date) 
        VALUES (OLD.Ticket_PNR, OLD.Status, NOW());
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE get_tickets_for_journey(IN journey_id_in INT)
BEGIN
    SELECT t.Ticket_PNR, t.Fair, t.Class, t.Status, p.First_Name, p.Last_Name, p.Residence, p.Email_Address
    FROM Ticket t
    JOIN Passenger p ON t.Ticket_PNR = p.Ticket_PNR
    WHERE t.Journey_Id = journey_id_in;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER insert_journey AFTER INSERT ON Journey
FOR EACH ROW
BEGIN
    INSERT INTO Journey_Status (Journey_Id, Status, Create_Date) 
    VALUES (NEW.Journey_Id, 'Active', NOW());
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE get_schedule_details(IN schedule_id_in INT)
BEGIN
    SELECT s.Schedule_Id, s.Depar_location, s.Depar_date, s.Depar_time, s.Arri_location, s.Arri_date, s.Arri_time, f.Flight_no
    FROM Schedule s
    JOIN Flight f ON s.Schedule_Id = f.Schedule_Id
    WHERE s.Schedule_Id = schedule_id_in;
END //

DELIMITER ;
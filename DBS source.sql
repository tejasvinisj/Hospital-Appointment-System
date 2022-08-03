create database DBS;
use DBS;
create table doctor_specialisation( id integer primary key,specialisation_in varchar(30));

create table DOCTOR(id integer primary key,first_name varchar(30),last_name  varchar(30),phone_number  bigint(10),
email varchar(30),specialisation_id integer);


alter table DOCTOR add foreign key(specialisation_id) references doctor_specialisation(id); 

create table doctor_availability(id integer primary key,doctor_id integer,days_in_week varchar(10),starting_time timestamp,ending_time timestamp,open_for_day varchar(3),
minutes_per_patient integer);


alter table doctor_availability add foreign key(doctor_id) references doctor(id);


create table insurance_provider(id integer primary key,provider_name varchar(30),phone_number bigint(10),email varchar(20));


create table patient_details(id integer primary key,first_name varchar(30) ,last_name  varchar(30),phone_number  bigint(10),email varchar(20),insurance_provider_id integer,
insurance_id varchar(20),mailing_address varchar(20));


alter table patient_details add foreign key(insurance_provider_id) references insurance_provider(id);

create table appointment_status(id integer primary key,status varchar(10),created_date date);

create table appointment(id integer primary key,doctor_id integer,patient_id integer,appointment_status_id integer,start_time timestamp,end_time timestamp,
comment_by_patient varchar(400),comment_by_doctor varchar(400));

alter table appointment add foreign key(doctor_id) references doctor(id);

alter table appointment add foreign key(patient_id) references patient_details(id);


alter table appointment add foreign key(appointment_status_id) references appointment_status(id);



  


insert into appointment_status (id,status,created_date) values( 1,'Confirmed','2009-12-01');


insert into appointment_status (id,status,created_date) values( 2,'Cancelled','2009-12-01');


insert into appointment_status (id,status,created_date) values( 3,'Pending','2009-12-01');


insert into doctor_specialisation (id,specialisation_in) values (1,'General Medicine');

insert into doctor_specialisation (id,specialisation_in) values (2,'Allergy and Immunology');

insert into doctor_specialisation (id,specialisation_in) values (3,'Surgeon');

insert into doctor_specialisation (id,specialisation_in) values (4,'Gynecologists');

insert into doctor_specialisation (id,specialisation_in) values (5,'Neurology');

insert into insurance_provider(id,provider_name,phone_number,email) values (1,'United Insurance',9898987865,'united@xyz.com');

insert into insurance_provider(id,provider_name,phone_number,email) values (2,'Med Life Insurance',8765432096,'medlife@xyz.com');

insert into insurance_provider(id,provider_name,phone_number,email) values (3,'Stanford Insurance',9807654324,'stanford@xyz.com');


insert into doctor(id,first_name,last_name,phone_number,email,specialisation_id) values(1,'Steve','John',8765421321,'steve@xyz.com',1);

insert into doctor(id,first_name,last_name,phone_number,email,specialisation_id) values(2,'Robert','Jacob',8909812345,'robert@xyz.com',2);

insert into doctor(id,first_name,last_name,phone_number,email,specialisation_id) values(3,'Brian','Flair',7890865765,'brian@xyz.com',3);

insert into doctor(id,first_name,last_name,phone_number,email,specialisation_id) values(4,'Seth','Dolph',9806543212,'seth@xyz.com',4);

insert into doctor(id,first_name,last_name,phone_number,email,specialisation_id) values(5,'Dean','Stuart',8954312098,'dean@xyz.com',5);




insert into doctor_availability(id,doctor_id,days_in_week,starting_time,ending_time,open_for_day,minutes_per_patient) values 
                           ( 1,1,'Monday','2009-12-01  08:00:00','2009-12-01 18:00:00','Yes',30);
						   
						   
insert into doctor_availability(id,doctor_id,days_in_week,starting_time,ending_time,open_for_day,minutes_per_patient) values 
                           ( 2,2,'Friday','2009-12-05  10:30:00','2009-12-05 16:00:00','Yes',30);


insert into doctor_availability(id,doctor_id,days_in_week,starting_time,ending_time,open_for_day,minutes_per_patient) values 
                           ( 3,3,'Tuesday','2009-12-02  13:00:00','2009-12-02 15:30:00','Yes',30);


insert into doctor_availability(id,doctor_id,days_in_week,starting_time,ending_time,open_for_day,minutes_per_patient) values 
                           ( 4,4,'Wednesday','2009-12-04  08:00:00','2009-12-04 18:00:00','Yes',30);


insert into doctor_availability(id,doctor_id,days_in_week,starting_time,ending_time,open_for_day,minutes_per_patient) values 
                           ( 5,5,'Saturday','2009-12-07  09:30:00','2009-12-07 16:35:00','Yes',30);	



insert into doctor_availability(id,doctor_id,days_in_week,starting_time,ending_time,open_for_day,minutes_per_patient) values 
                           ( 6,5,'Friday','2009-12-05  09:30:00','2009-12-05 16:35:00','Yes',30);	
						   
						   
						   
insert into patient_details(id,first_name,last_name,phone_number,email,insurance_provider_id,insurance_id,mailing_address) values(1,'Mark','Wahlberg','7655432109','mark@xyz.com',1,'5678','abcd');

insert into patient_details(id,first_name,last_name,phone_number,email,insurance_provider_id,insurance_id,mailing_address) values(2,'John','Snow','9012345432','john@xyz.com',2,'9088','qwert');

insert into patient_details(id,first_name,last_name,phone_number,email,insurance_provider_id,insurance_id,mailing_address) values(3,'Goerge','Wick','7123456091','george@xyz.com',3,'4568','rstu');

insert into patient_details(id,first_name,last_name,phone_number,email,insurance_provider_id,insurance_id,mailing_address) values(4,'Parker','Kyle','9216734058','parker@xyz.com',1,'1201','bcnm');

insert into patient_details(id,first_name,last_name,phone_number,email,insurance_provider_id,insurance_id,mailing_address) values(5,'King','Chloe','7123456081','king@xyz.com',2,'0967','adfg');

insert into patient_details(id,first_name,last_name,phone_number,email,insurance_provider_id,insurance_id,mailing_address) values(6,'Richard','Joey','9671267891','richard@xyz.com',3,'8765','lkop');

insert into patient_details(id,first_name,last_name,phone_number,email,insurance_provider_id,insurance_id,mailing_address) values(7,'Bill','Benz','8012670987','bill@xyz.com',2,'2569','poiu');

insert into patient_details(id,first_name,last_name,phone_number,email,insurance_provider_id,insurance_id,mailing_address) values(8,'Stan','Ford','7123450985','stan@xyz.com',1,'3254','jklo');

insert into patient_details(id,first_name,last_name,phone_number,email,insurance_provider_id,insurance_id,mailing_address) values(9,'Nulan','Lord','9078904596','nulan@xyz.com',3,'1478','dfgh');

insert into patient_details(id,first_name,last_name,phone_number,email,insurance_provider_id,insurance_id,mailing_address) values(10,'Ash','Rant','7655432108','ash@xyz.com',3,'9632','asdf');



insert into appointment(id,doctor_id,patient_id,appointment_status_id,start_time,end_time,comment_by_patient,comment_by_doctor) values
  (1,1,1,1,'2009-12-01 08:30:00','2009-12-01 09:00:00','Fever','Paracetamol_drug');
  
insert into appointment(id,doctor_id,patient_id,appointment_status_id,start_time,end_time,comment_by_patient,comment_by_doctor) values
  (2,1,2,1,'2009-12-01 12:30:00','2009-12-01 13:00:00','Cold','Afrin_drug');
  
  
insert into appointment(id,doctor_id,patient_id,appointment_status_id,start_time,end_time,comment_by_patient,comment_by_doctor) values
  (3,2,4,1,'2009-12-05 12:40:00','2009-12-05 13:10:00','Allergy','Cetirizine_drug');
  
  
insert into appointment(id,doctor_id,patient_id,appointment_status_id,start_time,end_time,comment_by_patient,comment_by_doctor) values
  (4,2,3,1,'2009-12-05 14:00:00','2009-12-05 14:30:00','Diabetes','Insulin_drug');
  
  
insert into appointment(id,doctor_id,patient_id,appointment_status_id,start_time,end_time,comment_by_patient,comment_by_doctor) values
  (5,3,7,1,'2009-12-02 13:00:00','2009-12-02 13:30:00','Pain in heart','Surgery_recommended');
  

insert into appointment(id,doctor_id,patient_id,appointment_status_id,start_time,end_time,comment_by_patient,comment_by_doctor) values
  (6,4,6,1,'2009-12-04 10:00:00','2009-12-04 10:30:00','Infertility','Can go with IVF');
  
insert into appointment(id,doctor_id,patient_id,appointment_status_id,start_time,end_time,comment_by_patient,comment_by_doctor) values
  (7,3,5,1,'2009-12-02 15:00:00','2009-12-05 15:30:00','Replace hand','Surgery_recommended');  
  
insert into appointment(id,doctor_id,patient_id,appointment_status_id,start_time,end_time,comment_by_patient,comment_by_doctor) values
  (8,4,8,2,'2009-12-04 12:00:00','2009-12-04 12:30:00','Pelvic Pain','NULL');
  
  
  
insert into appointment(id,doctor_id,patient_id,appointment_status_id,start_time,end_time,comment_by_patient,comment_by_doctor) values
  (9,5,10,3,'2009-12-05 09:45:00','2009-12-05 10:15:00','Stroke','Emergency IV medication');


insert into appointment(id,doctor_id,patient_id,appointment_status_id,start_time,end_time,comment_by_patient,comment_by_doctor) values
  (10,5,9,1,'2009-12-05 14:00:00','2009-12-05 14:30:00','Alzheimers','Razadyne_drug'); 
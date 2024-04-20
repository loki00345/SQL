create database IdkReally
use IdkReally
 
create table Departments(
	Id int primary key identity(1,1) not null,
    Financing money not null check(Financing >= 0) default 0,
    Name nvarchar(100) not null unique
)
 
create table Faculties(
    Id int primary key identity(1,1) not null,
    Dean nvarchar(max) not null,
    Name nvarchar(100) not null unique
)
 
create table Groups(
    Id int primary key identity(1,1) not null,
    Name nvarchar(10) not null unique,
    Rating int not null check(Rating between 0 and 5),
    Year int not null check(Year between 1 and 5)
)
 
create table Teachers(
    Id int primary key identity(1,1) not null,
	Name nvarchar(50) check(Name<>'') not null,
	Surname nvarchar(50) check(Surname<>'') not null,
	Birthdate date not null check(Birthdate<>''),
	Department nvarchar(50),
	Phone nvarchar(50) not null unique,
	Subject nvarchar(20) not null,
	GroupN nvarchar(30) not null,
)

insert into Departments (Financing, Name)
values
    (50000, 'Department of Mechanical Engineering'),
    (60000, 'Department of Pediatrics'),
    (45000, 'Department of English Literature'),
    (70000, 'Department of Physics'),
    (55000, 'Department of Marketing'),
    (48000, 'Department of Criminal Law'),
    (52000, 'Department of Sociology'),
    (62000, 'Department of Early Childhood Education'),
    (58000, 'Department of Computer Science'),
    (53000, 'Department of Musicology'),
    (49000, 'Department of Agronomy'),
    (51000, 'Department of Urban Planning'),
    (54000, 'Department of Pharmacology'),
    (63000, 'Department of Critical Care Nursing'),
    (57000, 'Department of Macroeconomics'),
    (60000, 'Department of Clinical Psychology'),
    (55000, 'Department of Orthodontics'),
    (59000, 'Department of Animal Science'),
    (56000, 'Department of Environmental Science'),
    (58000, 'Department of Journalism');
 
insert into Faculties (Dean, Name)
values
    ('John Doe', 'Faculty of Engineering'),
    ('Jane Smith', 'Faculty of Medicine'),
    ('Michael Johnson', 'Faculty of Arts'),
    ('Emily Brown', 'Faculty of Science'),
    ('David Wilson', 'Faculty of Business'),
    ('Jessica Lee', 'Faculty of Law'),
    ('Brian Davis', 'Faculty of Social Sciences'),
    ('Sarah Taylor', 'Faculty of Education'),
    ('Kevin Martinez', 'Faculty of Information Technology'),
    ('Laura Rodriguez', 'Faculty of Music'),
    ('Christopher Moore', 'Faculty of Agriculture'),
    ('Amanda White', 'Faculty of Architecture'),
    ('Jason Clark', 'Faculty of Pharmacy'),
    ('Melissa Young', 'Faculty of Nursing'),
    ('Steven Hall', 'Faculty of Economics'),
    ('Rachel Allen', 'Faculty of Psychology'),
    ('Daniel Scott', 'Faculty of Dentistry'),
    ('Michelle Adams', 'Faculty of Veterinary Medicine'),
    ('Eric Baker', 'Faculty of Environmental Studies'),
    ('Kimberly King', 'Faculty of Communications');
 
insert into Groups (Name, Rating, Year)
values
    ('Group A', 4, 3),
    ('Group B', 3, 2),
    ('Group C', 5, 4),
    ('Group D', 2, 1),
    ('Group E', 4, 3),
    ('Group F', 3, 2),
    ('Group G', 5, 4),
    ('Group H', 2, 1),
    ('Group I', 4, 3),
    ('Group J', 3, 2),
    ('Group K', 5, 4),
    ('Group L', 2, 1),
    ('Group M', 4, 3),
    ('Group N', 3, 2),
    ('Group O', 5, 4),
    ('Group P', 2, 1),
    ('Group Q', 4, 3),
    ('Group R', 3, 2),
    ('Group S', 5, 4),
    ('Group T', 2, 1);
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Loraine', 'Phalip', '1995-10-02', 'Sales', '(825) 4492568', 'Toys', 'SE-AB');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Donny', 'McCool', '1991-10-20', 'Training', '(477) 4035565', 'Movies', 'AU-QLD');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Bari', 'Brewood', '1974-10-02', 'Marketing', '(323) 3518329', 'Music', 'IE-KK');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Dewain', 'Ewing', '1982-09-14', 'Human Resources', '(898) 3121450', 'Music', 'BR-PE');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Karlene', 'McCree', '1982-07-02', 'Support', '(460) 6011361', 'Sports', 'ES-CN');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Emile', 'Fassam', '1989-03-03', 'Legal', '(510) 6782387', 'Garden', 'RU-ARK');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Cecelia', 'Mandrier', '1975-07-03', 'Business Development', '(390) 3606089', 'Books', 'DK-85');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Cord', 'Seamans', '1983-11-23', 'Business Development', '(481) 5386072', 'Garden', 'ID-NB');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Sean', 'Haddeston', '1993-11-04', 'Human Resources', '(716) 7076548', 'Electronics', 'ZA-NP');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Shirlene', 'Furminger', '1991-06-24', 'Sales', '(856) 6551211', 'Garden', 'CO-VAC');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Walker', 'Steinson', '1981-07-25', 'Legal', '(606) 9497905', 'Automotive', 'US-NJ');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Collette', 'Purdey', '1997-10-25', 'Business Development', '(119) 7945141', 'Computers', 'US-DE');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Vittorio', 'Abrahm', '1980-06-01', 'Research and Development', '(302) 4190362', 'Tools', 'US-CA');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Elyse', 'Alcock', '1991-05-27', 'Human Resources', '(394) 5234330', 'Automotive', 'US-AK');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Damien', 'Schinetti', '1979-06-07', 'Product Management', '(721) 9006190', 'Grocery', 'GP-U-A');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Clerkclaude', 'Vales', '1999-08-18', 'Product Management', '(471) 1315283', 'Baby', 'FR-N');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Marcus', 'Shackel', '1980-11-02', 'Legal', '(878) 7505575', 'Computers', 'US-AL');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Kerwinn', 'Hellicar', '1992-04-20', 'Business Development', '(410) 5948304', 'Automotive', 'SA-08');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Ivonne', 'Edelheit', '1971-08-13', 'Research and Development', '(726) 4385027', 'Movies', 'US-NC');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Natal', 'Lightbody', '1971-05-20', 'Marketing', '(216) 1246893', 'Shoes', 'CA-ON');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Berni', 'Cathie', '1980-12-06', 'Business Development', '(605) 9921706', 'Health', 'CY-04');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Vivyan', 'Crowcher', '1971-10-07', 'Support', '(393) 5561304', 'Garden', 'CN-45');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Aubrey', 'Crowdson', '1982-11-27', 'Human Resources', '(759) 2755465', 'Industrial', 'RU-IRK');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Rhetta', 'Gatchel', '1992-06-29', 'Business Development', '(927) 6810842', 'Clothing', 'US-OK');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Giacinta', 'Dive', '1977-09-16', 'Business Development', '(326) 1560508', 'Outdoors', 'CO-TOL');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Emanuele', 'Crame', '1982-07-18', 'Product Management', '(725) 7644744', 'Industrial', 'LK-2');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Masha', 'Bertenshaw', '1974-04-24', 'Human Resources', '(519) 8726846', 'Home', 'SE-BD');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Ardelle', 'Biglin', '1977-05-04', 'Legal', '(508) 3311609', 'Grocery', 'CN-35');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Marsiella', 'Crispin', '1998-05-02', 'Legal', '(826) 7901941', 'Music', 'FR-Q');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Bale', 'Goldson', '1978-07-27', 'Marketing', '(281) 8775038', 'Toys', 'BR-MG');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Sheilakathryn', 'Giffard', '1982-06-22', 'Engineering', '(474) 7347817', 'Games', 'US-ND');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Malynda', 'Hidderley', '1978-01-23', 'Human Resources', '(117) 4935463', 'Automotive', 'GR-54');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Matthiew', 'Abramovitch', '1979-04-11', 'Legal', '(787) 5746016', 'Garden', 'CA-ON');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Iolanthe', 'Stanion', '1982-04-02', 'Support', '(651) 3778223', 'Tools', 'BR-PA');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Madalyn', 'Ivanchov', '1979-03-20', 'Business Development', '(506) 9910008', 'Automotive', 'VU-TAE');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Alma', 'Buse', '1989-10-08', 'Training', '(922) 6636456', 'Books', 'SD-05');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Kanya', 'Cleave', '1998-02-28', 'Sales', '(475) 7039691', 'Beauty', 'CG-7');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Patrizia', 'Haddock', '1985-07-25', 'Product Management', '(438) 1792412', 'Grocery', 'GB-ENG');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Essie', 'Schoolfield', '1981-10-30', 'Marketing', '(861) 2952258', 'Music', 'BR-MG');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Lucie', 'Challace', '1973-08-24', 'Business Development', '(987) 6013170', 'Industrial', 'US-IN');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Ginger', 'Peddel', '1992-01-22', 'Training', '(355) 3028780', 'Automotive', 'GB-SCT');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('George', 'Colenutt', '1983-06-23', 'Accounting', '(352) 9098097', 'Kids', 'BR-SC');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Oralla', 'Jocelyn', '1984-02-15', 'Product Management', '(563) 7895399', 'Outdoors', 'NP-ME');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Frederic', 'de Marco', '1972-02-29', 'Marketing', '(468) 2469249', 'Beauty', 'US-ND');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Ophelia', 'Yeoman', '1984-09-17', 'Business Development', '(264) 1189700', 'Kids', 'BF-NAM');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Hakim', 'Krammer', '1979-11-16', 'Engineering', '(556) 8396427', 'Tools', 'MG-F');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Conrado', 'Lambrook', '1981-05-03', 'Services', '(771) 2789166', 'Kids', 'AU-QLD');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Reg', 'Biernacki', '1985-07-24', 'Accounting', '(304) 7071585', 'Computers', 'PA-8');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Debbie', 'Boatswain', '1990-07-03', 'Business Development', '(131) 7153302', 'Industrial', 'US-AK');
insert into Teachers (Name, Surname, Birthdate, Department, Phone, Subject, GroupN) values ('Patsy', 'Calder', '1998-09-19', 'Sales', '(495) 1424584', 'Baby', 'JP-47');

 
select Id, Financing, Name from Departments

select Name as 'Group Name', Rating as 'Group Rating' from Groups

select Surname, (Premium / Salary) * 100 as 'Premium Percentage', ((Salary + Premium) / Salary) * 100 as 'Total Salary Percentage' from Teachers

select concat('The dean of faculty ', Name, ' is ', Dean) as 'Faculty Information' from Faculties

select Surname, Salary from Teachers where IsProfessor = 1 and Salary > 1050

select Name from Departments where Financing < 11000 or Financing >= 25000

select Name from Faculties where Name <> 'Computer Science'

select Surname, Position from Teachers where IsProfessor = 0

select Surname, Position, Salary, Premium from Teachers where IsAssistant = 1 and Premium between 160 and 550

select Surname, Salary from Teachers where IsAssistant = 1

select Surname, Position from Teachers where EmploymentDate < '2000-01-01'

select Name as 'Name of Department' from Departments where Name < 'Software Development' order by Name

select Surname from Teachers where IsAssistant = 1 and (Salary + Premium) <= 1200

select Name from Groups where Year = 5 and Rating between 2 and 4

select Surname from Teachers where IsAssistant = 1 and (Salary < 550 or Premium < 200)
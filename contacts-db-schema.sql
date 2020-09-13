USE master;
GO

CREATE DATABASE ContactsManager;
GO

USE ContactsManager;
GO

CREATE TABLE Contacts 
(
	FirstName nvarchar(200) NOT NULL,
	LastName nvarchar(200) NOT NULL,
	EmailAddress nvarchar(300) NOT NULL
);
GO

-- Mock Data generated using Mockaroo.com
INSERT INTO Contacts (FirstName, LastName, EmailAddress) VALUES 
('Johnna', 'Corbett', 'jcorbett0@opera.com'),
('Timothea', 'Bartoszinski', 'tbartoszinski1@free.fr'),
('Flor', 'Haggerstone', 'fhaggerstone2@acquirethisname.com'),
('Genovera', 'Willder', 'gwillder3@biblegateway.com'),
('Dar', 'Simmons', 'dsimmons4@lycos.com'),
('Peter', 'Daltry', 'pdaltry5@123-reg.co.uk'),
('Fritz', 'Kasher', 'fkasher6@webmd.com'),
('Cleo', 'Madgett', 'cmadgett7@opera.com'),
('Kath', 'Strachan', 'kstrachan8@mlb.com'),
('Blondie', 'Pinnock', 'bpinnock9@time.com'),
('Jeanette', 'Cunah', 'jcunaha@cornell.edu'),
('Julian', 'Allans', 'jallansb@godaddy.com'),
('Harlin', 'Dimic', 'hdimicc@theglobeandmail.com'),
('Patricio', 'MacFadden', 'pmacfaddend@icio.us'),
('Hans', 'Gabel', 'hgabele@irs.gov'),
('Brigg', 'Khilkov', 'bkhilkovf@ucla.edu'),
('Nicolea', 'Franzetti', 'nfranzettig@mapy.cz'),
('Renault', 'Avraam', 'ravraamh@issuu.com'),
('Kirby', 'Scattergood', 'kscattergoodi@time.com'),
('Cirstoforo', 'Weems', 'cweemsj@google.fr');

SELECT * FROM Contacts;
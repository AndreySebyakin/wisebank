CREATE TABLE Role (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
role varchar(256) NOT NULL
);

CREATE TABLE User (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
name varchar(256) NOT NULL,
surname varchar(256) NOT NULL,
roleId int NOT NULL,
FOREIGN KEY (roleId) REFERENCES Role (id)
);

CREATE TABLE Login (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
userLogin varchar(256) NOT NULL,
password varchar(256) NOT NULL,
userId int NOT NULL,
FOREIGN KEY (userId) REFERENCES User (id)
);

CREATE TABLE AccountStatus (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
status varchar(256) NOT NULL
);

CREATE TABLE Account (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
accountBalance double(10, 2) DEFAULT 0,
accountLimit double(10, 2) DEFAULT 0,
accountStatusId int DEFAULT 1 NOT NULL,
userId int NOT NULL,
FOREIGN KEY (accountStatusId) REFERENCES AccountStatus (id),
FOREIGN KEY (userId) REFERENCES User (id)
);

CREATE TABLE CreditCard (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
cardNumber bigint NOT NULL,
currency varchar(256) DEFAULT 'USD',
validThruMonth int NOT NULL,
validThruYear int NOT NULL,
cvv int NOT NULL,
pin int NOT NULL,
accountId int NOT NULL,
FOREIGN KEY (accountId) REFERENCES Account (id),
CHECK (cardNumber>1000000000000000 AND validThruMonth<=12 AND validThruMonth>0 AND validThruYear>=2000 AND cvv>0 AND cvv<1000 AND pin>0 AND pin<10000)
);

CREATE TABLE PaymentStatus (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
status varchar(256) NOT NULL
);

CREATE TABLE Payment (
id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
cardId int NOT NULL,
date DATETIME DEFAULT CURRENT_TIMESTAMP,
balanceBefore double(10, 2) DEFAULT 0,
paymentAmount double(10, 2) DEFAULT 0,
balanceAfter double(10, 2) DEFAULT 0,
paymentStatusId int NOT NULL,
beneficiary varchar(256) NOT NULL,
FOREIGN KEY (cardId) REFERENCES CreditCard (id),
FOREIGN KEY (paymentStatusId) REFERENCES PaymentStatus (id)
);
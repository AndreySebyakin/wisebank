INSERT INTO Role (role) value ('Client');
INSERT INTO Role (role) value ('Administrator');

INSERT INTO User (name, surname, roleId) values ('Andrey', 'Tarasov', 2);
INSERT INTO User (name, surname, roleId) values ('Sergey', 'Tunin', 1);
INSERT INTO User (name, surname, roleId) values ('Vladislav', 'Filatov', 1);
INSERT INTO User (name, surname, roleId) values ('Tatiana', 'Zova', 1);
INSERT INTO User (name, surname, roleId) values ('Olya', 'Petrova', 1);
INSERT INTO User (name, surname, roleId) values ('Velentina', 'Ivanova', 1);

INSERT INTO Login (userLogin, password, userId) values ('andrey', 'fegrge', 1);
INSERT INTO Login (userLogin, password, userId) values ('sergey', 'ergerg', 2);
INSERT INTO Login (userLogin, password, userId) values ('vlad', 'etyju', 3);
INSERT INTO Login (userLogin, password, userId) values ('tanya', 'ukyik', 4);
INSERT INTO Login (userLogin, password, userId) values ('olya', 'yukyi', 5);
INSERT INTO Login (userLogin, password, userId) values ('valya', 'yiyly', 6);

INSERT INTO AccountStatus (status) value ('blocked');
INSERT INTO AccountStatus (status) value ('activated');
INSERT INTO AccountStatus (status) value ('limitExceeded');

INSERT INTO Account (accountBalance, accountLimit, accountStatusId, userId) values (1000, -8000, 2, 2);
INSERT INTO Account (accountBalance, accountLimit, accountStatusId, userId) values (2000.12, -8000, 2, 2);
INSERT INTO Account (accountBalance, accountLimit, accountStatusId, userId) values (-3000, -8000, 2, 3);
INSERT INTO Account (accountBalance, accountLimit, accountStatusId, userId) values (-100.55, -8000, 2, 3);
INSERT INTO Account (accountBalance, accountLimit, accountStatusId, userId) values (-500, -8000, 2, 4);
INSERT INTO Account (accountBalance, accountLimit, accountStatusId, userId) values (-600, -8000, 2, 4);
INSERT INTO Account (accountBalance, accountLimit, accountStatusId, userId) values (-900, -8000, 2, 5);
INSERT INTO Account (accountBalance, accountLimit, accountStatusId, userId) values (-10000, -10000, 3, 5);
INSERT INTO Account (accountBalance, accountLimit, accountStatusId, userId) values (-855, -10000, 1, 6);
INSERT INTO Account (accountBalance, accountLimit, accountStatusId, userId) values (-253, -10000, 2, 6);

INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (5862256285223620, 10, 2023, 123, 5324, 1);
INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (7645545451451500, 6, 2023, 532, 5248, 1);
INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (7537877527527800, 7, 2023, 545, 8458, 2);
INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (5244518455157820, 8, 2023, 552, 7421, 3);
INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (4451584518414500, 9, 2023, 525, 4212, 4);
INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (4154517962541000, 10, 2023, 562, 4412, 5);
INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (7896678678687670, 2, 2024, 553, 5452, 6);
INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (7867878735798900, 4, 2024, 542, 5552, 7);
INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (7444727878275270, 4, 2024, 555, 1451, 8);
INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (7534653757377850, 6, 2022, 552, 4121, 9);
INSERT INTO CreditCard (cardNumber, validThruMonth, validThruYear, cvv, pin, accountId) values (8565452124444540, 7, 2023, 111, 8564, 10);

INSERT INTO PaymentStatus (status) value ('successfully');
INSERT INTO PaymentStatus (status) value ('insufficientFunds');
INSERT INTO PaymentStatus (status) value ('cancelled');

INSERT INTO Payment (accountId, cardId, balanceBefore, paymentAmount, balanceAfter, paymentStatusId, beneficiary)
values (1, 1, 3000, 500, 2500, 1, 'MTS');
INSERT INTO Payment (accountId, cardId, balanceBefore, paymentAmount, balanceAfter, paymentStatusId, beneficiary)
values (1, 2, 2500, 1500, 1000, 1, 'Evroopt');
INSERT INTO Payment (accountId, cardId, balanceBefore, paymentAmount, balanceAfter, paymentStatusId, beneficiary)
values (2, 3, -1000, -3000, 2000, 1, 'Account refill');
INSERT INTO Payment (accountId, cardId, balanceBefore, paymentAmount, balanceAfter, paymentStatusId, beneficiary)
values (3, 4, -3000, 10000, -3000, 2, 'Volvo Center');
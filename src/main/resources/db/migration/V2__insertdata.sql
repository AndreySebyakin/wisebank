INSERT INTO user_role (roles) value ('ROLE_ADMIN');
INSERT INTO user_role (roles) value ('ROLE_USER');

INSERT INTO User (name, surname, roleId, username, password, enabled, credentials_non_expired, account_non_expired, account_non_locked) values ('Andrey', 'Tarasov', 1, 'andrey', '$2a$12$Q6Hn4JoWReF8JMhZVucD7OzVuNqXbDoEkaMtXFFvGih6VvQczOAUK', 1, 1, 1, 1);
INSERT INTO User (name, surname, roleId, username, password, enabled, credentials_non_expired, account_non_expired, account_non_locked) values ('Sergey', 'Tunin', 2, 'sergey', '$2a$12$3sOtwRMxNWSy9lGfNHugc.nl8psF1x0Dfn//HrzYQ489n5ecmb/0q', 1, 1, 1, 1);
INSERT INTO User (name, surname, roleId, username, password, enabled, credentials_non_expired, account_non_expired, account_non_locked) values ('Vladislav', 'Filatov', 2, 'vlad', '$2a$12$KD/AI1I9KF8tVvEpDJMKg.UDOqCOeIaNITHk0zPFAGxraNRzdf5m2', 1, 1, 1, 1);
INSERT INTO User (name, surname, roleId, username, password, enabled, credentials_non_expired, account_non_expired, account_non_locked) values ('Tatiana', 'Zova', 2, 'tanya', '$2a$12$UmWvFvjIEDn9MFbJ604tiOQJUJefE60mvIQuZql2sczCcZxVIUn72', 1, 1, 1, 1);
INSERT INTO User (name, surname, roleId, username, password, enabled, credentials_non_expired, account_non_expired, account_non_locked) values ('Olya', 'Petrova', 2, 'olya', '$2a$12$qzFu5ccYN1NyWhNx4j7Ab.mUK/t0mxJ5gFwpczBdgDJ1PocQjikHu', 1, 1, 1, 1);
INSERT INTO User (name, surname, roleId, username, password, enabled, credentials_non_expired, account_non_expired, account_non_locked) values ('Velentina', 'Ivanova', 2, 'valya', '$2a$12$Pw3xjFoNW0XKgVEP9uyLSeBerK7bfqiwid6v.WlhqJDnD7Cr/3Use', 1, 1, 1, 1);

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

INSERT INTO Payment (cardId, balanceBefore, paymentAmount, balanceAfter, paymentStatusId, beneficiary)
values (1, 3000, 500, 2500, 1, 'MTS');
INSERT INTO Payment (cardId, balanceBefore, paymentAmount, balanceAfter, paymentStatusId, beneficiary)
values (2, 2500, 1500, 1000, 1, 'Evroopt');
INSERT INTO Payment (cardId, balanceBefore, paymentAmount, balanceAfter, paymentStatusId, beneficiary)
values (3, -1000, -3000, 2000, 1, 'Account refill');
INSERT INTO Payment (cardId, balanceBefore, paymentAmount, balanceAfter, paymentStatusId, beneficiary)
values (4, -3000, 10000, -3000, 2, 'Volvo Center');
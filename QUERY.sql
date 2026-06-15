-- 1. Create Tables
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    role VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20)
);

CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    fixture VARCHAR(100) NOT NULL,
    tournament_category VARCHAR(100) NOT NULL,
    base_ticket_price DECIMAL(10,2) NOT NULL,
    match_status VARCHAR(50) NOT NULL
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    user_id INT,
    match_id INT,
    seat_number VARCHAR(10),
    payment_status VARCHAR(50),
    total_cost DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);

-- 2. Populate Sample Data
INSERT INTO Users VALUES (1, 'Tanvir Rahman', 'tanvir@mail.com', 'Football Fan', '+8801711111111');
INSERT INTO Users VALUES (2, 'Asif Haque', 'asif@mail.com', 'Football Fan', '+8801722222222');
INSERT INTO Users VALUES (3, 'Sajjad Rahman', 'sajjad@mail.com', 'Ticket Manager', '+8801733333333');
INSERT INTO Users VALUES (4, 'Jannat Ara', 'jannat@mail.com', 'Football Fan', NULL);

INSERT INTO Matches VALUES (101, 'Real Madrid vs Barcelona', 'Champions League', 150.00, 'Available');
INSERT INTO Matches VALUES (102, 'Man City vs Liverpool', 'Premier League', 120.00, 'Selling Fast');
INSERT INTO Matches VALUES (103, 'Bayern Munich vs PSG', 'Champions League', 130.00, 'Available');
INSERT INTO Matches VALUES (104, 'AC Milan vs Inter Milan', 'Serie A', 90.00, 'Sold Out');
INSERT INTO Matches VALUES (105, 'Juventus vs Roma', 'Serie A', 80.00, 'Available');

INSERT INTO Bookings VALUES (501, 1, 101, 'A-12', 'Confirmed', 150.00);
INSERT INTO Bookings VALUES (502, 1, 102, 'B-04', 'Confirmed', 120.00);
INSERT INTO Bookings VALUES (503, 2, 101, 'A-13', 'Confirmed', 150.00);
INSERT INTO Bookings VALUES (504, 2, 101, NULL, NULL, 150.00);
INSERT INTO Bookings VALUES (505, 3, 102, 'C-20', 'Pending', 120.00);
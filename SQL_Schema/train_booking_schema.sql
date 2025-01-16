CREATE DATABASE TrainBookingSystem;

USE TrainBookingSystem;

CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    PhoneNumber VARCHAR(20)
);

CREATE TABLE Stations (
    StationID INT PRIMARY KEY AUTO_INCREMENT,
    StationName VARCHAR(100),
    Town VARCHAR(50)
);

CREATE TABLE Trains (
    TrainID INT PRIMARY KEY AUTO_INCREMENT,
    TrainName VARCHAR(100),
    TrainType VARCHAR(50)
);

CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    PassengerID INT,
    TrainID INT,
    DepartureStationID INT,
    ArrivalStationID INT,
    TravelDate DATE,
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (DepartureStationID) REFERENCES Stations(StationID),
    FOREIGN KEY (ArrivalStationID) REFERENCES Stations(StationID)
);

INSERT INTO Passengers (FirstName, LastName, PhoneNumber, Gender, DateOfBirth)
VALUES 
    ('John', 'Doe', '1234567890', 'Male', '1990-01-01'),
    ('Jane', 'Smith', '0987654321', 'Female', '1995-02-02');
INSERT INTO Trains (TrainName, TrainType, Capacity, OperatingStatus)
VALUES 
    ('Express A', 'Madaraka Express', 100, 'Active'),
    ('Local B', 'SGR', 150, 'Active'),
    ('Local C', 'Kisumu-Nairobi', 150, 'Active'),
    ('Cargo B', 'Cargo', 150, 'Active');
INSERT INTO Stations (StationName, Town )
VALUES 
    ('Central Station', 'Nairobi' ),
    ('East Station', 'Mombasa');
INSERT INTO Bookings (PassengerID, TrainID, DepartureStationID, ArrivalStationID, TravelDate, BookingStatus)
VALUES 
    (1, 1, 1, 2, '2025-01-20', 'Confirmed'),
    (2, 2, 2, 1, '2025-01-25', 'Pending');
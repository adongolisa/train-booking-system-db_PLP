-- Retrieve booking details
SELECT 
    b.BookingID, 
    p.FirstName, 
    p.LastName, 
    t.TrainName, 
    s1.StationName AS Departure, 
    s2.StationName AS Arrival, 
    b.TravelDate 
FROM Bookings b
JOIN Passengers p ON b.PassengerID = p.PassengerID
JOIN Trains t ON b.TrainID = t.TrainID
JOIN Stations s1 ON b.DepartureStationID = s1.StationID
JOIN Stations s2 ON b.ArrivalStationID = s2.StationID;

-- Find all trains departing from a specific station
SELECT 
    t.TrainName, 
    t.TrainID 
FROM Trains t
JOIN Bookings b ON t.TrainID = b.TrainID
JOIN Stations s ON b.DepartureStationID = s.StationID
WHERE s.StationName = 'Central Station';

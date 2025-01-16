
# Train Booking System Database

This repository contains the design and implementation of a **Train Booking System Database**. The project showcases how to model, implement, and query a relational database for managing train bookings, passengers, trains, and stations.

---

## Features

1. **Database Design:**
   - A comprehensive **Entity-Relationship Diagram (ERD) designed using FIGMA**.
   - Normalized database schema to ensure data consistency and avoid redundancy.

2. **Core Components:**
   - **Passengers**: Information about passengers who book train tickets.
   - **Trains**: Details of the trains available for booking.
   - **Stations**: Departure and arrival locations.
   - **Bookings**: Tracks passenger reservations, including travel date and stations.

3. **SQL Implementation:**
   - **Schema Creation:** SQL scripts to define tables, relationships, and constraints.
   - **Sample Data:** Populated with realistic data for testing.
   - **Queries:** Predefined SQL queries for retrieving data and demonstrating relationships.

---

##  Project Structure

```
├── ERD/                     # Folder containing the ERD diagram (image/PDF).
├── SQL_Schema/              # SQL scripts to create tables and constraints.
├── Sample_Data/             # SQL scripts to insert sample data.
├── Queries/                 # SQL queries to interact with the database.
├── README.md                # Documentation.
```

---

##  Installation and Usage

### 1. Prerequisites
- **MySQL Workbench** or any other SQL client.
- MySQL server installed on your local machine.

### 2. Setting Up the Database
1. Clone this repository:
   ```bash
   git clone https://github.com/<your-username>/train-booking-system-db_PLP.git
   cd train-booking-system-db_PLP
   ```
2. Open MySQL Workbench and run the following:
   - Create the database using the SQL schema in `SQL_Schema/train_booking_schema.sql`.
   - Populate the database with sample data from `Sample_Data/sample_data.sql`.

### 3. Running Queries
- Navigate to the `Queries/` folder and execute SQL queries to retrieve or manipulate data.

---

## 📊 Entity-Relationship Diagram (ERD)

!(https://www.figma.com/board/seKeNEjmmyyIoC3Y9BZpyV/Train-booking-ERD?node-id=0-1&t=KfCJbFG3oHQ3TuL3-1)


---

## Example Queries

### 1. Retrieve Booking Details:
```sql
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
```

### 2. Find All Trains Departing from a Specific Station:
```sql
SELECT 
    t.TrainName, 
    t.TrainID 
FROM Trains t
JOIN Bookings b ON t.TrainID = b.TrainID
JOIN Stations s ON b.DepartureStationID = s.StationID
WHERE s.StationName = 'Central Station';
```

---

## Contributing

Contributions are welcome! Feel free to fork this repository and submit pull requests for improvements or additional features.

---





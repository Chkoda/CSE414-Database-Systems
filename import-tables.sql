.mode csv
.headers on
.open flights
PRAGMA foreign_keys=ON;
.import flight-dataset/carriers.csv carriers
.import flight-dataset/months.csv months
.import flight-dataset/weekdays.csv weekdays
.import flight-dataset/flights-small.csv flights
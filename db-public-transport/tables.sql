CREATE TABLE bus_lines (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    duration INTEGER,  -- in minutes
    bus_type TEXT,
    start TEXT NOT NULL,
    end TEXT NOT NULL
);

CREATE TABLE metro_lines (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    color TEXT NOT NULL,
    price REAL NOT NULL,
    duration INTEGER,  -- in minutes
    start TEXT NOT NULL,
    end TEXT NOT NULL,
    average_depth REAL  -- in meters
);

CREATE TABLE stops (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

CREATE TABLE bus_stops (
    id INTEGER PRIMARY KEY,
    bus_id INTEGER,
    stop_id INTEGER,
    FOREIGN KEY (bus_id) REFERENCES bus_lines(id),
    FOREIGN KEY (stop_id) REFERENCES stops(id),
    UNIQUE(bus_id, stop_id)
);

CREATE TABLE metro_stops (
    id INTEGER PRIMARY KEY,
    metro_id INTEGER,
    stop_id INTEGER,
    FOREIGN KEY (metro_id) REFERENCES metro_lines(id),
    FOREIGN KEY (stop_id) REFERENCES stops(id),
    UNIQUE(metro_id, stop_id)
);


--This table will save the Rooms information
CREATE TABLE Room(
id INTEGER PRIMARY KEY,
x INTEGER,
y INTEGER
);


--This table will save the information about all the devices installed in each room
CREATE TABLE Device(
room_id INTEGER,
id INTEGER,
x INTEGER,
y INTEGER,
is_master INTEGER,
FOREIGN KEY(room_id) REFERENCES Room(id),
PRIMARY KEY(room_id, id)
);

--Table for storing all the ping data between nodes
CREATE TABLE Data(
time INTEGER, 
room INTEGER,
position BLOB,
FOREIGN KEY(room) REFERENCES Room(id),
PRIMARY KEY(time, room)
);


--Table for storing the default data when nobody is in the room
CREATE TABLE default_rssi(
room_id INTEGER,
dev_1 INTEGER,
dev_2 INTEGER,
RSSI INTEGER,
FOREIGN KEY(room_id) REFERENCES Room(id),
PRIMARY KEY(room_id, dev_1, dev_2)
);

--Testdata:
INSERT INTO Room(id, x, y)
VALUES (27, 203, 257);

INSERT INTO Device(room_id, id, x, y, is_master)
VALUES(27, 65, 0, 0, 1);
INSERT INTO Device(room_id, id, x, y, is_master)
VALUES(27, 68, 0, 257, 0);
INSERT INTO Device(room_id, id, x, y, is_master)
VALUES(27, 67, 203, 0, 0);
INSERT INTO Device(room_id, id, x, y, is_master)
VALUES(27, 68, 203, 257, 0);

INSERT INTO default_rssi(room_id, dev_1, dev_2, RSSI)
VALUES(27, 65, 68, -62.5);
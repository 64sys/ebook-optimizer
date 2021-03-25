CREATE TABLE IF NOT EXISTS `authors` (
	`autidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`autname`	TEXT UNIQUE,
	`autshow`	TEXT,
	`autcode`	TEXT,
	`autinput`	TEXT
);
CREATE TABLE IF NOT EXISTS `books` (
	`bokidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`bokname`	TEXT UNIQUE,
	`boktitle`	TEXT,
	`bokauthor`	INTEGER,
	`bokdate`	TEXT,
	`boksubject`	INTEGER,
	`bokdesc`	TEXT,
	`bokseries`	TEXT,
	`bokseridx`	INTEGER,
	`boklang`	INTEGER,
	`bokpub`	INTEGER,
	`bokcrc`	TEXT,
	`bokfile`	TEXT,
	`bokorigfile`	TEXT,
	FOREIGN KEY(`boklang`) REFERENCES `languages`(`lngidx`),
	FOREIGN KEY(`bokpub`) REFERENCES `publishers`(`pubidx`),
	FOREIGN KEY(`boksubject`) REFERENCES `subjects`(`subidx`),
	FOREIGN KEY(`bokauthor`) REFERENCES `authors`(`autidx`)
);
CREATE TABLE IF NOT EXISTS `publishers` (
	`pubidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`pubname`	TEXT UNIQUE
);
CREATE TABLE IF NOT EXISTS `languages` (
	`lngidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`lngname`	TEXT UNIQUE,
	`lngdesc`	TEXT
);
CREATE TABLE IF NOT EXISTS `subjects` (
	`subidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`subname`	TEXT UNIQUE,
	`subdesc`	TEXT
);
CREATE TABLE IF NOT EXISTS `equivalents` (
	`equidx`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`equname`	TEXT UNIQUE,
	`equauthor`	INTEGER,
	FOREIGN KEY(`equauthor`) REFERENCES `authors`(`autidx`)
);

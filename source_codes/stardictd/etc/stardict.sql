CREATE TABLE stardict_users (
	user_id INT UNSIGNED AUTO_INCREMENT,
	username CHAR(16) NOT NULL,
	user_md5saltpassword CHAR(32) BINARY NOT NULL,
	level TINYINT UNSIGNED NOT NULL,
	lasttime INT UNSIGNED NOT NULL,

	PRIMARY KEY(user_id),
	UNIQUE INDEX(username)
);

CREATE TABLE user_basic (
	id INT UNSIGNED NOT NULL,
	register_time INT UNSIGNED NOT NULL,
	email CHAR(32) NOT NULL,
	collatefunc TINYINT UNSIGNED NOT NULL,
	language VARCHAR(16) NOT NULL,
	dictmask TEXT NOT NULL,

	PRIMARY KEY(id)
);

CREATE TABLE Info (
	info SERIAL,
	url varchar(50) NOT NULL,
    	vertical_segment varchar(20) NOT NULL,
	PRIMARY KEY (info)
);

CREATE TABLE Specifications (
	specifications_id SERIAL,
	cores SERIAL,
    	threads SERIAL,
    	base_frequency SERIAL,
	PRIMARY KEY (specifications_id)
);

CREATE TABLE Processors (
	product_line VARCHAR(40),
	name VARCHAR(40) NOT NULL,
	launch_date VARCHAR(10) NOT NULL,
	info INT NOT NULL,
	specifications_id INT NOT NULL,
	PRIMARY KEY (specifications_id),
	CONSTRAINT FK_Specifications
		FOREIGN KEY (specifications_id)
			REFERENCES Specifications (specifications_id) ON DELETE CASCADE,
	CONSTRAINT FK_info
		FOREIGN KEY (info)
	  		REFERENCES info (info) ON DELETE CASCADE
);

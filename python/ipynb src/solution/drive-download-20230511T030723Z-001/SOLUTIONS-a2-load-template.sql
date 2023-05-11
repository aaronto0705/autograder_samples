DROP TABLE IF EXISTS GVADATA;
DROP TABLE IF EXISTS STATEINFO;

/*Part 1: Create GVADATA Table from GVAData.csv*/
/*Complete the CREATE TABLE statement by specifying the appropriate data types*/

CREATE TABLE GVADATA (
	id					INTEGER,   -- corresponds to 'Incident ID' column in csv file
	date				DATE,      -- corresponds to 'Incident Date' column in csv file
	state				TEXT,      
	city				TEXT,      -- corresponds to 'City Or County' column in csv file 
	address				TEXT,
	n_killed			INTEGER,
	n_injured			INTEGER
);

\copy GVADATA FROM 'GVAData.csv'  delimiter ','  csv header encoding 'ISO8859-1'


/*Part 2: Create STATEINFO Table from stateinfo.csv*/
/*Complete the CREATE TABLE statement by specifying the appropriate data types*/

CREATE TABLE STATEINFO (
	state				TEXT,
	pop18				INTEGER,
	gunlaw18			INTEGER
);

\copy STATEINFO FROM 'stateinfo.csv'  delimiter ','  csv header encoding 'ISO8859-1'

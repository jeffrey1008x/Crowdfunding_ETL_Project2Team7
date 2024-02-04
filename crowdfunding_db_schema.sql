CREATE TABLE category (
  category_id VARCHAR(10) NOT NULL PRIMARY KEY,
  category VARCHAR(30)
);

CREATE TABLE subcategory (
  subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
  subcategory VARCHAR(30)
);

CREATE TABLE contacts (
  contact_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(15), 
  last_name VARCHAR(15),
  email VARCHAR(30)
);

CREATE TABLE campaign (
  cf_id INT NOT NULL PRIMARY KEY,
  contact_id INT NOT NULL, 
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
  company_name VARCHAR(30) NOT NULL,
  description VARCHAR(30),
  goal FLOAT,
  pledged FLOAT,
  outcome VARCHAR(20),
  backers_count INT,
  country VARCHAR(4),
  currency VARCHAR(6),
  launched_date DATE,
  end_date DATE,
  category_id VARCHAR(10) NOT NULL, 
	FOREIGN KEY (category_id) REFERENCES category (category_id),
  subcategory_id VARCHAR(10) NOT NULL, 
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

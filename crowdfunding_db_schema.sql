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
  first_name VARCHAR(255), 
  last_name VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE campaign (
  cf_id INT NOT NULL PRIMARY KEY,
  contact_id INT NOT NULL, 
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
  company_name VARCHAR(255) NOT NULL,
  description VARCHAR(255),
  goal FLOAT,
  pledged FLOAT,
  outcome VARCHAR(255),
  backers_count INT,
  country VARCHAR(255),
  currency VARCHAR(255),
  launched_date DATE,
  end_date DATE,
  category_id VARCHAR(10) NOT NULL, 
	FOREIGN KEY (category_id) REFERENCES category (category_id),
  subcategory_id VARCHAR(10) NOT NULL, 
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

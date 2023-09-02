CREATE TABLE contacts (
	contact_id int PRIMARY KEY,
	first_name varchar,
	last_name varchar,
	email varchar
);

CREATE TABLE category (
	category_id varchar,
	category varchar,
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
	subcategory_id varchar,
	subcategory varchar,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
	cf_if int PRIMARY KEY,
	contact_id int,
	company_name varchar,
	description varchar,
	goal float,
	pledged float,
	outcome varchar,
	backers_count int,
	country varchar,
	currency varchar,
	launch_date date, 
	end_date date,
	category_id varchar,
	subcategory_id varchar,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    FOREIGN KEY (contact_id) REFERENCES campaign (contact_id)
);

CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(255)
);


CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INTEGER,
    company_name VARCHAR(255),
    description TEXT,
    goal DECIMAL(15, 2),
    pledged DECIMAL(15, 2),
    outcome VARCHAR(50),
    backers_count INTEGER,
    country VARCHAR(10),
    currency VARCHAR,
    launch_date TIMESTAMP WITH TIME ZONE,
    end_date TIMESTAMP WITH TIME ZONE,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);






-- Dimension Tables

CREATE TABLE CustomerDim (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    gender TEXT,
    age INTEGER,
    country TEXT
);

CREATE TABLE ProductDim (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    brand TEXT
);

CREATE TABLE TimeDim (
    time_id INTEGER PRIMARY KEY,
    date TEXT,
    month TEXT,
    quarter TEXT,
    year INTEGER
);

CREATE TABLE StoreDim (
    store_id INTEGER PRIMARY KEY,
    store_name TEXT,
    location TEXT
);

-- Fact Table

CREATE TABLE SalesFact (
    sale_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    product_id INTEGER,
    time_id INTEGER,
    store_id INTEGER,
    quantity INTEGER,
    unit_price REAL,
    total_sales REAL,
    FOREIGN KEY (customer_id) REFERENCES CustomerDim(customer_id),
    FOREIGN KEY (product_id) REFERENCES ProductDim(product_id),
    FOREIGN KEY (time_id) REFERENCES TimeDim(time_id),
    FOREIGN KEY (store_id) REFERENCES StoreDim(store_id)
);

# Crowdfunding_ETL Project 2

Using Python and Pandas we built an ETL pipeline and then used regular expresions to extract and transform the data as found in the 
Jupyter notebook ETL_Mini_Project_Starter_Code.ipynb
After transforming the data, we created four CSV files (saved in Resources) and used the CSV file data to create an ERD and a table 
schema (crowdfunding_db_scheman.png, and crowdfunding_db_schema.sql)
Finally, we uploaded the CSV file data into a Postgres database.

## Create the Category and Subcategory DataFrames- 
Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:

"category_id" with entries going sequentially from "cat1" to "catn", where n is the number of unique categories,

"category" column that contains only the category titles,

Then we exported the category DataFrame as category.csv


Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:

"subcategory_id" with entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories

"subcategory" column that contains only the subcategory titles

Then we exported the subcategory DataFrame as subcategory.csv


## Create the Campaign DataFrame- 

Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:

"cf_id" column

"contact_id" column

"company_name" column

"blurb" column, renamed to "description"

"goal" column, converted to the float data type

"pledged" column, converted to the float data type

"outcome" column

"backers_count" column

"country" column

"currency" column

"launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format

"deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format

"category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame

"subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory 
DataFrame

Then we exported the campaign DataFrame as campaign.csv


## Create the Contacts DataFrame

Extracted the "contact_id", "name", and "email" columns by using regular expressions.

Created a new DataFrame with the extracted data.

Converted the "contact_id" column to the integer type.

Split each "name" column value into a first and a last name, and placed each in a new column.

Cleaned and then exported the DataFrame as contacts.csv 



## Create the Crowdfunding Database

Create an ERD of the tables 

Use the information from the ERD to create a table schema for each CSV file (see crowdfunding_db_schema.png)



Created a new Postgres database (see crowdfunding_db.sql)

Using the database schema, create the tables in the correct order to handle the foreign keys.

Verify the table creation by running a SELECT statement for each table 

Import each CSV file into its corresponding SQL table.

Verify that each table has the correct data by running a SELECT statement for each (see crowdfunding_db_queries.sql)







### Resources used in our project:

When seperating out the category and subcategories columns, we used code from this url for our .apply(lambda x: 
pd.Series(str(x).split("/"))) statement. It is the 6th option down on the page.

https://sparkbyexamples.com/pandas/pandas-split-column/#:~:text=In%20Pandas%2C%20the%20apply(),to%20split%20into%20two%20columns.

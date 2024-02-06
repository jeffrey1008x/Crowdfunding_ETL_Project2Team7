# Project2Team7
Team #7 Group Project #2 Repository for UofT Data Bootcamp. <br/>
An exercise on data extraction from Excel files and PSQL database data import.

## Team Members
**Divya Sajjan**  
**Aniruddha J. Mohile**  
**Jia Xin Sun**  
**Jeffrey Che**  

As part of this project, we extracted the data from the excel files using Pandas. We then transformed the data using python, pandas and regex and created the ERD in quickDBD. Using the ERD we created the schema for the database structure in postgres. Finally, we loaded the data to the database using import tool and verified the table creation using SQL queries in PGadmin. 

## Exporting Data to CSV Files
To create the data in .csv files, we used Jupyter Notebook to run "ETL_Mini_Project.ipynb" under the root folder. <br/>
Data was output in the "Resources" folder.

## Entity Relationship Diagram
Please see erd.JPG in the root folder to see our database ERD.

## Importing Data to PostgreSQL Database
After the .csv files were created, we created the sql queries and ran "crowdfunding_db_schema.sql" to create the required tables. <br/>
To load the data, we used the import function to load the csv files into the corresponding tables. <br/>
To confirm table creation and import, we used the statements in "select_statements.sql".

## Screenshots
Please see "Screenshots" folders for screenshots of our database.

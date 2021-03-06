# Adam Babbit CS540 Project - Update Land Use Code
Found in this repo, there is a script for updating your parcel table directly as this is a rather light update to run. There is also access to a predefined table with the parid and updated column ready to be joined on the parid with your parcel table. There is also a PDF outlining the problem, steps, and final results of the process found [here]()
## Note
In order to add the premade table data into the pgAdmin, right click on the database, select restore. Navigate to the file location. Then restore from that file and join off of it.
## Problem
The problem solved in this github is the cleaning and generalization of Land Use Codes (LUC) for land records in volusia county into the catagories of: 
* Agricultural
* Governmental
* Industrial
* Insitutional
* Miscellaneous
* Non-Agricultural Acreage
* Residential

The LUC before generialization has 87 distinct catagories for parcels which some users might find less useful when compared to the 8 after the generalization I am preforming

## QGIS
The results of the generalization once joined with the geom of the parcels based on the parid is show in the following image. This data is color coded as shown in the left of the image. 
![Image of QGIS results](https://github.com/ambabbit/cs540_Project/blob/main/Images/Generic_Image.PNG?raw=true)

## How to Use Data
There are several ways to import my data set and utilize it. I will run through those options here step by step as well as link a video showing how to do it at the bottom of this section.
### Option 1: Restore from SQL Script
Download the [Parcel_Generic_LUC_Table.sql](https://github.com/ambabbit/cs540_Project/blob/main/parcel_generic_luc_table.sql) script. After you finish installing open pgAdmin and log into your database. Once logged in and connected, right click on the volusia scheme and click on Restore option seen in image below 

![Restore Image](https://user-images.githubusercontent.com/36246037/116801093-9ab0d180-aad4-11eb-826f-a9df4d0b4883.png)

Then select the file browser. Once there be sure to change the file type from backup to sql

![Select SQL](https://github.com/ambabbit/cs540_Project/blob/main/Images/sql.png)

From this point just follow the prompt and the table will be imported containing all the data 

### Option 2: CSV Import

In order to create the table you must run the following script

```sql
CREATE TABLE volusia.luc_generic
(
    parid double precision,
    geom geometry(MultiPolygon,2236),
    luc_generic_desc character varying(255) COLLATE pg_catalog."default"
)
```

After you created the table download the [csv](https://github.com/ambabbit/cs540_Project/blob/main/LUC_Generic_Data.zip) and pay attention to where it is downloaded. Next you have to put the following script into pgAdmin changing the file location to the location on your device.

```sql
COPY volusia.luc_generic FROM 'D:\cs540\project\cs540_Project\LUC_Generic_Data.csv' WITH (FORMAT 'csv', DELIMITER E',', NULL '', HEADER);
```

## Data Information
The data used for this project was gathered from the volusia.parcel table and the luc and luc_desc specifically as well as information provided by professor Lehr. In the following video I discuss the problem, my solution, how you can repeat it, and how to use the data.

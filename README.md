# Adam Babbit CS540 Project - Update Land Use Code
Found in this repo, there is a script for updating your parcel table directly as this is a rather light update to run. There is also access to a predefined table with the parid and updated column ready to be joined on the parid with your parcel table.
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

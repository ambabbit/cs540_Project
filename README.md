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

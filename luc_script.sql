Alter table volusia.parcel add luc_generic_desc varchar(255);

Update volusia.parcel Set luc_generic_desc = 'RESIDENTIAL' where left(luc,1) = '0';
Update volusia.parcel Set luc_generic_desc = 'COMMERCIAL' where left(luc,1) = '1' or left(luc,1) = '2' or left(luc,1) = '3';
Update volusia.parcel Set luc_generic_desc = 'INDUSTRIAL' where left(luc,1) = '4';
Update volusia.parcel Set luc_generic_desc = 'AGRICULTURAL' where left(luc,1) = '5' or left(luc,1) = '6';
Update volusia.parcel Set luc_generic_desc = 'INSTITUTIONAL' where left(luc,1) = '7';
Update volusia.parcel Set luc_generic_desc = 'GOVERNMENTAL' where left(luc,1) = '8';
Update volusia.parcel Set luc_generic_desc = 'MISCELLANEOUS' where left(luc,1) = '9';
Update volusia.parcel Set luc_generic_desc = 'CENTRALLY ASSESSED' where left(luc,2) = '98';
Update volusia.parcel Set luc_generic_desc = 'NON-AGRICULTURAL ACREAGE' where left(luc,2) = '99';

select luc, luc_desc, luc_generic_desc, count(*) from volusia.parcel group by luc, luc_generic_desc, luc_desc order by luc::integer ;
--select parid, luc_generic_desc from volusia.parcel;

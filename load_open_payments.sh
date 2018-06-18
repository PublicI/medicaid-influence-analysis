#!/bin/bash

psql -U postgres -h db.fivetwentyseven.com -f create.sql -d health
for year in 2016; do
	echo $year
	psql -U postgres -h db.fivetwentyseven.com -c "COPY open_payments_general FROM STDIN WITH CSV HEADER DELIMITER ','" < "data/general/OP_DTL_GNRL_PGYR"$year"_P01172018.csv" health
done
for year in 2015 2014 2013; do
	echo $year
	psql -U postgres -h db.fivetwentyseven.com -c "COPY open_payments_general (
	Change_Type,
	Covered_Recipient_Type,
	Teaching_Hospital_CCN,
	Teaching_Hospital_ID,
	Teaching_Hospital_Name,
	Physician_Profile_ID,
	Physician_First_Name,
	Physician_Middle_Name,
	Physician_Last_Name,
	Physician_Name_Suffix,
	Recipient_Primary_Business_Street_Address_Line1,
	Recipient_Primary_Business_Street_Address_Line2,
	Recipient_City,
	Recipient_State,
	Recipient_Zip_Code,
	Recipient_Country,
	Recipient_Province,
	Recipient_Postal_Code,
	Physician_Primary_Type,
	Physician_Specialty,
	Physician_License_State_code1,
	Physician_License_State_code2,
	Physician_License_State_code3,
	Physician_License_State_code4,
	Physician_License_State_code5,
	Submitting_Applicable_Manufacturer_or_Applicable_GPO_Name,
	Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_ID,
	Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_Name,
	Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_State,
	Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_Country,
	Total_Amount_of_Payment_USDollars,
	Date_of_Payment,
	Number_of_Payments_Included_in_Total_Amount,
	Form_of_Payment_or_Transfer_of_Value,
	Nature_of_Payment_or_Transfer_of_Value,
	City_of_Travel,
	State_of_Travel,
	Country_of_Travel,
	Physician_Ownership_Indicator,
	Third_Party_Payment_Recipient_Indicator,
	Name_of_Third_Party_Entity_Receiving_Payment_or_Transfer_of_Value,
	Charity_Indicator,
	Third_Party_Equals_Covered_Recipient_Indicator,
	Contextual_Information,
	Delay_in_Publication_Indicator,
	Record_ID,
	Dispute_Status_for_Publication,
	Related_Product_Indicator,
	Name_of_Drug_or_Biological_or_Device_or_Medical_Supply_1,
	Name_of_Drug_or_Biological_or_Device_or_Medical_Supply_2,
	Name_of_Drug_or_Biological_or_Device_or_Medical_Supply_3,
	Name_of_Drug_or_Biological_or_Device_or_Medical_Supply_4,
	Name_of_Drug_or_Biological_or_Device_or_Medical_Supply_5,
	Associated_Drug_or_Biological_NDC_1,
	Associated_Drug_or_Biological_NDC_2,
	Associated_Drug_or_Biological_NDC_3,
	Associated_Drug_or_Biological_NDC_4,
	Associated_Drug_or_Biological_NDC_5,
	Product_Category_or_Therapeutic_Area_1,
	Product_Category_or_Therapeutic_Area_2,
	Product_Category_or_Therapeutic_Area_3,
	Product_Category_or_Therapeutic_Area_4,
	Product_Category_or_Therapeutic_Area_5,
	Program_Year,
	Payment_Publication_Date
	)
	FROM STDIN WITH CSV HEADER DELIMITER ','" < "data/general/OP_DTL_GNRL_PGYR"$year"_P01172018.csv" health
done
for year in 2016; do
	echo $year
	psql -U postgres -h db.fivetwentyseven.com -c "COPY open_payments_research FROM STDIN WITH CSV HEADER DELIMITER ','" < "data/research/OP_DTL_RSRCH_PGYR"$year"_P01172018.csv" health
done
for year in 2015 2014 2013; do
	echo $year
	psql -U postgres -h db.fivetwentyseven.com -c "COPY open_payments_research (
	Change_Type,
	Covered_Recipient_Type,
	Noncovered_Recipient_Entity_Name,
	Teaching_Hospital_CCN,
	Teaching_Hospital_ID,
	Teaching_Hospital_Name,
	Physician_Profile_ID,
	Physician_First_Name,
	Physician_Middle_Name,
	Physician_Last_Name,
	Physician_Name_Suffix,
	Recipient_Primary_Business_Street_Address_Line1,
	Recipient_Primary_Business_Street_Address_Line2,
	Recipient_City,
	Recipient_State,
	Recipient_Zip_Code,
	Recipient_Country,
	Recipient_Province,
	Recipient_Postal_Code,
	Physician_Primary_Type,
	Physician_Specialty,
	Physician_License_State_code1,
	Physician_License_State_code2,
	Physician_License_State_code3,
	Physician_License_State_code4,
	Physician_License_State_code5,
	Principal_Investigator_1_Profile_ID,
	Principal_Investigator_1_First_Name,
	Principal_Investigator_1_Middle_Name,
	Principal_Investigator_1_Last_Name,
	Principal_Investigator_1_Name_Suffix,
	Principal_Investigator_1_Business_Street_Address_Line1,
	Principal_Investigator_1_Business_Street_Address_Line2,
	Principal_Investigator_1_City,
	Principal_Investigator_1_State,
	Principal_Investigator_1_Zip_Code,
	Principal_Investigator_1_Country,
	Principal_Investigator_1_Province,
	Principal_Investigator_1_Postal_Code,
	Principal_Investigator_1_Primary_Type,
	Principal_Investigator_1_Specialty,
	Principal_Investigator_1_License_State_code1,
	Principal_Investigator_1_License_State_code2,
	Principal_Investigator_1_License_State_code3,
	Principal_Investigator_1_License_State_code4,
	Principal_Investigator_1_License_State_code5,
	Principal_Investigator_2_Profile_ID,
	Principal_Investigator_2_First_Name,
	Principal_Investigator_2_Middle_Name,
	Principal_Investigator_2_Last_Name,
	Principal_Investigator_2_Name_Suffix,
	Principal_Investigator_2_Business_Street_Address_Line1,
	Principal_Investigator_2_Business_Street_Address_Line2,
	Principal_Investigator_2_City,
	Principal_Investigator_2_State,
	Principal_Investigator_2_Zip_Code,
	Principal_Investigator_2_Country,
	Principal_Investigator_2_Province,
	Principal_Investigator_2_Postal_Code,
	Principal_Investigator_2_Primary_Type,
	Principal_Investigator_2_Specialty,
	Principal_Investigator_2_License_State_code1,
	Principal_Investigator_2_License_State_code2,
	Principal_Investigator_2_License_State_code3,
	Principal_Investigator_2_License_State_code4,
	Principal_Investigator_2_License_State_code5,
	Principal_Investigator_3_Profile_ID,
	Principal_Investigator_3_First_Name,
	Principal_Investigator_3_Middle_Name,
	Principal_Investigator_3_Last_Name,
	Principal_Investigator_3_Name_Suffix,
	Principal_Investigator_3_Business_Street_Address_Line1,
	Principal_Investigator_3_Business_Street_Address_Line2,
	Principal_Investigator_3_City,
	Principal_Investigator_3_State,
	Principal_Investigator_3_Zip_Code,
	Principal_Investigator_3_Country,
	Principal_Investigator_3_Province,
	Principal_Investigator_3_Postal_Code,
	Principal_Investigator_3_Primary_Type,
	Principal_Investigator_3_Specialty,
	Principal_Investigator_3_License_State_code1,
	Principal_Investigator_3_License_State_code2,
	Principal_Investigator_3_License_State_code3,
	Principal_Investigator_3_License_State_code4,
	Principal_Investigator_3_License_State_code5,
	Principal_Investigator_4_Profile_ID,
	Principal_Investigator_4_First_Name,
	Principal_Investigator_4_Middle_Name,
	Principal_Investigator_4_Last_Name,
	Principal_Investigator_4_Name_Suffix,
	Principal_Investigator_4_Business_Street_Address_Line1,
	Principal_Investigator_4_Business_Street_Address_Line2,
	Principal_Investigator_4_City,
	Principal_Investigator_4_State,
	Principal_Investigator_4_Zip_Code,
	Principal_Investigator_4_Country,
	Principal_Investigator_4_Province,
	Principal_Investigator_4_Postal_Code,
	Principal_Investigator_4_Primary_Type,
	Principal_Investigator_4_Specialty,
	Principal_Investigator_4_License_State_code1,
	Principal_Investigator_4_License_State_code2,
	Principal_Investigator_4_License_State_code3,
	Principal_Investigator_4_License_State_code4,
	Principal_Investigator_4_License_State_code5,
	Principal_Investigator_5_Profile_ID,
	Principal_Investigator_5_First_Name,
	Principal_Investigator_5_Middle_Name,
	Principal_Investigator_5_Last_Name,
	Principal_Investigator_5_Name_Suffix,
	Principal_Investigator_5_Business_Street_Address_Line1,
	Principal_Investigator_5_Business_Street_Address_Line2,
	Principal_Investigator_5_City,
	Principal_Investigator_5_State,
	Principal_Investigator_5_Zip_Code,
	Principal_Investigator_5_Country,
	Principal_Investigator_5_Province,
	Principal_Investigator_5_Postal_Code,
	Principal_Investigator_5_Primary_Type,
	Principal_Investigator_5_Specialty,
	Principal_Investigator_5_License_State_code1,
	Principal_Investigator_5_License_State_code2,
	Principal_Investigator_5_License_State_code3,
	Principal_Investigator_5_License_State_code4,
	Principal_Investigator_5_License_State_code5,
	Submitting_Applicable_Manufacturer_or_Applicable_GPO_Name,
	Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_ID,
	Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_Name,
	Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_State,
	Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_Country,
	Related_Product_Indicator,
	Name_of_Drug_or_Biological_or_Device_or_Medical_Supply_1,
	Name_of_Drug_or_Biological_or_Device_or_Medical_Supply_2,
	Name_of_Drug_or_Biological_or_Device_or_Medical_Supply_3,
	Name_of_Drug_or_Biological_or_Device_or_Medical_Supply_4,
	Name_of_Drug_or_Biological_or_Device_or_Medical_Supply_5,
	Associated_Drug_or_Biological_NDC_1,
	Associated_Drug_or_Biological_NDC_2,
	Associated_Drug_or_Biological_NDC_3,
	Associated_Drug_or_Biological_NDC_4,
	Associated_Drug_or_Biological_NDC_5,
	Indicate_Drug_or_Biological_or_Device_or_Medical_Supply_1,
	Indicate_Drug_or_Biological_or_Device_or_Medical_Supply_2,
	Indicate_Drug_or_Biological_or_Device_or_Medical_Supply_3,
	Indicate_Drug_or_Biological_or_Device_or_Medical_Supply_4,
	Indicate_Drug_or_Biological_or_Device_or_Medical_Supply_5,
	Total_Amount_of_Payment_USDollars,
	Date_of_Payment,
	Form_of_Payment_or_Transfer_of_Value,
	Expenditure_Category1,
	Expenditure_Category2,
	Expenditure_Category3,
	Expenditure_Category4,
	Expenditure_Category5,
	Expenditure_Category6,
	Preclinical_Research_Indicator,
	Delay_in_Publication_Indicator,
	Name_of_Study,
	Dispute_Status_for_Publication,
	Record_ID,
	Program_Year,
	Payment_Publication_Date,
	ClinicalTrials_Gov_Identifier,
	Research_Information_Link,
	Context_of_Research
	)
	FROM STDIN WITH CSV HEADER DELIMITER ','" < "data/research/OP_DTL_RSRCH_PGYR"$year"_P01172018.csv" health
done
for year in 2016 2015 2014 2013; do
	echo $year
	psql -U postgres -h db.fivetwentyseven.com -c "COPY open_payments_ownership FROM STDIN WITH CSV HEADER DELIMITER ','" < "data/ownership/OP_DTL_OWNRSHP_PGYR"$year"_P01172018.csv" health
done
for year in 2016 2015 2014 2013; do
	echo $year
	psql -U postgres -h db.fivetwentyseven.com -c "COPY open_payments_deleted FROM STDIN WITH CSV HEADER DELIMITER ','" < "data/deleted/OP_REMOVED_DELETED_PGYR"$year"_P01172018.csv" health
done
psql -U postgres -h db.fivetwentyseven.com -c "COPY committee_members FROM STDIN WITH CSV HEADER DELIMITER ','" < "data/committee_members.csv" health
psql -U postgres -h db.fivetwentyseven.com -d health -c "UPDATE committee_members
SET first_name = TRIM(UPPER(first_name)),
    last_name = TRIM(UPPER(last_name)),
    state_name = TRIM(UPPER(state_name)),
    degree_1 = TRIM(UPPER(degree_1)),
    degree_2 = TRIM(UPPER(degree_2));"
psql -U postgres -h db.fivetwentyseven.com -d health -c "UPDATE open_payments_general
SET physician_first_name = TRIM(UPPER(physician_first_name)),
	physician_last_name = TRIM(UPPER(physician_last_name)),
	recipient_state = TRIM(UPPER(recipient_state));"
psql -U postgres -h db.fivetwentyseven.com -d health -c "UPDATE open_payments_ownership
SET physician_first_name = TRIM(UPPER(physician_first_name)),
	physician_last_name = TRIM(UPPER(physician_last_name)),
	recipient_state = TRIM(UPPER(recipient_state));"
psql -U postgres -h db.fivetwentyseven.com -d health -c "UPDATE open_payments_research
SET physician_first_name = TRIM(UPPER(physician_first_name)),
	physician_last_name = TRIM(UPPER(physician_last_name)),
	recipient_state = TRIM(UPPER(recipient_state)),
	principal_investigator_1_first_name = TRIM(UPPER(principal_investigator_1_first_name)),
	principal_investigator_1_last_name = TRIM(UPPER(principal_investigator_1_last_name)),
	principal_investigator_1_state = TRIM(UPPER(principal_investigator_1_state)),
	principal_investigator_2_first_name = TRIM(UPPER(principal_investigator_2_first_name)),
	principal_investigator_2_last_name = TRIM(UPPER(principal_investigator_2_last_name)),
	principal_investigator_2_state = TRIM(UPPER(principal_investigator_2_state)),
	principal_investigator_3_first_name = TRIM(UPPER(principal_investigator_3_first_name)),
	principal_investigator_3_last_name = TRIM(UPPER(principal_investigator_3_last_name)),
	principal_investigator_3_state = TRIM(UPPER(principal_investigator_3_state)),
	principal_investigator_4_first_name = TRIM(UPPER(principal_investigator_4_first_name)),
	principal_investigator_4_last_name = TRIM(UPPER(principal_investigator_4_last_name)),
	principal_investigator_4_state = TRIM(UPPER(principal_investigator_4_state)),
	principal_investigator_5_first_name = TRIM(UPPER(principal_investigator_5_first_name)),
	principal_investigator_5_last_name = TRIM(UPPER(principal_investigator_5_last_name)),
	principal_investigator_5_state = TRIM(UPPER(principal_investigator_5_state));"
psql -U postgres -h db.fivetwentyseven.com -d health -c "CREATE INDEX ON committee_members(first_name);
CREATE INDEX ON committee_members(last_name);
CREATE INDEX ON committee_members(state_name);
CREATE INDEX ON committee_members(degree_1);
CREATE INDEX ON committee_members(degree_2);"
psql -U postgres -h db.fivetwentyseven.com -d health -c "CREATE INDEX ON open_payments_general(physician_first_name);
CREATE INDEX ON open_payments_general(physician_last_name);
CREATE INDEX ON open_payments_general(recipient_state);
CREATE INDEX ON open_payments_general(physician_profile_id);"
psql -U postgres -h db.fivetwentyseven.com -d health -c "CREATE INDEX ON open_payments_ownership(physician_first_name);
CREATE INDEX ON open_payments_ownership(physician_last_name);
CREATE INDEX ON open_payments_ownership(recipient_state);
CREATE INDEX ON open_payments_ownership(physician_profile_id);"
psql -U postgres -h db.fivetwentyseven.com -d health -c "CREATE INDEX ON open_payments_research(physician_first_name);
CREATE INDEX ON open_payments_research(physician_last_name);
CREATE INDEX ON open_payments_research(recipient_state);
CREATE INDEX ON open_payments_research(physician_profile_id);
CREATE INDEX ON open_payments_research(principal_investigator_1_first_name);
CREATE INDEX ON open_payments_research(principal_investigator_1_last_name);
CREATE INDEX ON open_payments_research(principal_investigator_1_state);
CREATE INDEX ON open_payments_research(principal_investigator_2_first_name);
CREATE INDEX ON open_payments_research(principal_investigator_2_last_name);
CREATE INDEX ON open_payments_research(principal_investigator_2_state);
CREATE INDEX ON open_payments_research(principal_investigator_3_first_name);
CREATE INDEX ON open_payments_research(principal_investigator_3_last_name);
CREATE INDEX ON open_payments_research(principal_investigator_3_state);
CREATE INDEX ON open_payments_research(principal_investigator_4_first_name);
CREATE INDEX ON open_payments_research(principal_investigator_4_last_name);
CREATE INDEX ON open_payments_research(principal_investigator_4_state);
CREATE INDEX ON open_payments_research(principal_investigator_5_first_name);
CREATE INDEX ON open_payments_research(principal_investigator_5_last_name);
CREATE INDEX ON open_payments_research(principal_investigator_5_state);"
# Medicaid: Under the Influence
This repo contains code and data for "Medicaid: Under the Influence (LINK TO STORY)," a Center for Public Integrity investigation of the influence pharmaceutical companies exercise over state Medicaid programs' drug purchasing decisions.

A detailed description of the methodology behind the story [can be read here](https://www.publicintegrity.org/2018/07/10/21953/how-we-investigated-drugmakers-influence-over-medicaid).

### Here's what's in this repo.

##### [drug_payments.ipynb](drug_payments.ipynb)
This Jupyter notebook contains code used to analyze drug company payments to doctors sitting on Medicaid pharmacy and therapeutics committees or drug utilization review boards.

##### [drug_lobbying.ipynb](drug_lobbying.ipynb)
This Jupyter notebook contains code used to analyze drug industry lobbying of state legislatures.

##### [drug_spending.ipynb](drug_spending.ipynb)
This Jupyter notebook contains code used to analyze Medicaid and state budget spending.

##### [create_open_payments.sql](create_open_payments.sql)
This SQL script contains code used to create tables for the Open Payments general, research, ownership and deleted data sets.

##### [create_doctors.sql](create_doctors.sql)
This SQL script contains code used to create tables for the Medicaid pharmacy and therapeutics committees or drug utilization review boards and the NPPES registry data sets.

##### [create_lobbying.sql](create_lobbying.sql)
This SQL script contains code used to create a table for the NIMP lobbying data set.

##### [load_open_payments.sh](load_open_payments.sh)
This Bash script contains code used to load the Open Payments general, research, ownership and deleted data sets into a PostgreSQL database.

##### [load_doctors.sh](load_doctors.sh)
This Bash script contains code used to load the Medicaid Pharmacy and Therapeutics Committees or Drug Utilization Review Boards and the NPPES registry data sets into a PostgreSQL database.

##### [load_lobbying.sh](load_lobbying.sh)
This Bash script contains code used to load the NIMP lobbying data set into a PostgreSQL database.

##### doc_payments.xlsx
This Excel file contains data on pharmaceutical companies' payments to doctors sitting on Medicaid pharmacy and therapeutics committees or drug utilization review boards. The data comes from the Centers for Medicare and Medicaid Services' [Open Payments data](https://www.cms.gov/openpayments/) and the Medicaid pharmacy and therapeutics committees and drug utilization review boards of various states.

##### [drug_lobbying.xlsx](data/drug_lobbying.xlsx)
This Excel file contains data on pharmaceutical industry lobbying of state legislatures. The data comes from the [National Institue on Money in Politics](https://www.followthemoney.org) and the [National Conference of State Legislatures](http://www.ncsl.org).

##### [medicaid_spending.xlsx](data/medicaid_spending.xlsx)
This Excel file contains data on Medicaid spending. The data comes from the Centers for Medicare and Medicaid Services' [state drug utilization data](https://www.medicaid.gov/medicaid/prescription-drugs/state-drug-utilization-data/index.html), CMS' [Medicaid Budget and Expenditure System data](https://www.medicaid.gov/medicaid/finance/state-expenditure-reporting/expenditure-reports/index.html), the [National Association of State Budget Officers](https://www.nasbo.org/home) and the [Henry J Kaiser Foundation](https://www.kff.org/).

### Data dictionaries

##### Doc Payments


##### Drug Lobbying
* year: the year in which the lobbying took place
* lobbyists: the number of lobbyists classified under the "Pharmaceutical manufacturing" business category
* state: the state in which the lobbying took place
* legislators: the number of state legislators
* abbreviation: the abbreviation for the state in which the lobbying took place
* lobbyists_to_legislators: the ratio of pharmaceutical industry lobbyists to state legislators

##### Medicaid Spending
###### Budgets
* year: the state's fiscal year, usually July through June but April through March in NY, September through August in TX and October through September in AL and MI
* state: the state spending the money
* medicaid_state: the state share of Medicaid spending
* medicaid_federal: the federal share of Medicaid spending
* medicaid_total: total Medicaid spending
* all_spending_state: the state share of state budget expenditures
* all_spending_federal: the federal share of state budget expenditures
* all_spending_total: total state budget expenditures
* medicaid_percentage_of_all_spending_total: the proportion of each state's budget dedicated to Medicaid spending
###### Drugs
* year: the calendar year
* drug_spending: Medicaid drug spending prior to the application of rebates<sup>[1](#footnote1)</sup>
* drug_rebates: drug rebates paid back to state Medicaid programs by pharmaceutical manufacturers
* spending_less_rebates: Medicaid drug spending after the application of rebates
###### Drug Spending Per Enrollee
* year: the calendar year
* enrollment: nationwide Medicaid enrollment<sup>[2](#footnote2)</sup>
* spending_less_rebates: Medicaid drug spending after the application of rebates
* spending_per_enrollee: Medicaid drug spending after the application of rebates per enrollee

<a name="footnote1">1</a>: Drug spending data for Arizona’s Medicaid program in 2008 and 2009 was unavailable at the time of publication.

<a name="footnote2">2</a>: Enrollment counts from 2008 through 2014 represent anyone who had at least one day of Medicaid coverage in the year, while figures from 2015 through 2016 represent the highest monthly enrollment in the year. Additionally, full data for a handful of states was unavailable in 2012 or 2013 so data from the previous year was used.

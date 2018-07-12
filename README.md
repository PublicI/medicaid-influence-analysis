# Medicaid: Under the Influence
This repo contains code and data for "Medicaid: Under the Influence (LINK TO STORY)," a Center for Public Integrity investigation of the influence pharmaceutical companies exercise over state Medicaid programs' drug purchasing decisions.

A detailed description of the methodology behind the story (can be read here).

### Here's what's in this repo.

##### drug_payments.ipynb
This Jupyter notebook contains code used to analyze drug company payments to doctors sitting on Medicaid pharmacy and therapeutics committees or drug utilization review boards.

##### drug_lobbying.ipynb
This Jupyter notebook contains code used to analyze drug industry lobbying of state legislatures.

##### drug_spending.ipynb
This Jupyter notebook contains code used to analyze Medicaid and state budget spending.

##### create_open_payments.sql
This SQL script contains code used to create tables for the Open Payments general, research, ownership and deleted data sets.

##### create_doctors.sql
This SQL script contains code used to create tables for the Medicaid pharmacy and therapeutics committees or drug utilization review boards and the NPPES registry data sets.

##### create_lobbying.sql
This SQL script contains code used to create a table for the NIMP lobbying data set.

##### load_open_payments.sh
This Bash script contains code used to load the Open Payments general, research, ownership and deleted data sets into a PostgreSQL database.

##### load_open_payments.sh
This Bash script contains code used to load the Medicaid Pharmacy and Therapeutics Committees or Drug Utilization Review Boards and the NPPES registry data sets into a PostgreSQL database.

##### load_open_payments.sh
This Bash script contains code used to load the NIMP lobbying data set into a PostgreSQL database.

##### drug_lobbying.xlsx
This Excel file contains data on pharmaceutical industry lobbying of state legislatures. The data comes from the [National Institue on Money in Politics](https://www.followthemoney.org) and the [National Conference of State Legislatures](http://www.ncsl.org).

##### medicaid_spending.xlsx
This Excel file contains data on Medicaid spending. The data comes from the Centers for Medicare and Medicaid Services' [state drug utilization data](https://www.medicaid.gov/medicaid/prescription-drugs/state-drug-utilization-data/index.html), CMS' [Medicaid Budget and Expenditure System data](https://www.medicaid.gov/medicaid/finance/state-expenditure-reporting/expenditure-reports/index.html), the [National Association of State Budget Officers](https://www.nasbo.org/home) and the [Henry J Kaiser Foundation](https://www.kff.org/).

##### doc_payments.xlsx
This Excel file contains data on pharmaceutical companies' payments to doctors sitting on Medicaid pharmacy and therapeutics committees or drug utilization review boards. The data comes from the Centers for Medicare and Medicaid Services' [Open Payments data](https://www.cms.gov/openpayments/) and the Medicaid pharmacy and therapeutics committees and drug utilization review boards of various states.

### Data dictionaries

##### Drug Lobbying
* year: the year in which the lobbying took place
* lobbyists: the number of lobbyists classified under the "Pharmaceutical manufacturing" business category
* state: the state in which the lobbying took place
* legislators: the number of state legislators
* abbreviation: the abbreviation for the state in which the lobbying took place
* lobbyists_to_legislators: the ratio of pharmaceutical industry lobbyists to state legislators

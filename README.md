# EthereumAnalysis

INTRODUCTION
------------

The repository contains the code used to retrieve Ethereum transactions from the cloud-based Ethereum database as well as subsequent analysis of the data using the NetworkX library. The process is detailed in Section 3 of the report. 

The public dataset ‘crypto-Ethereum’ is hosted on the Google BigQuery platform, and contains information about transactions carried out on Ethereum. The transactions can be retrieved using SQL queries on the BigQuery console. The BigQuery API is then used to analyse the data in a Jupyter notebook. The included files in this project are

* query_transactions.sql: SQL queries used to retrieve transactions on Etheream
* query_binance.sql: SQL queries used to retrieve transactions with Binance
* temporal_analysis.ipynb: jupyter notebook to analyse Ethereum transactions
* binance_analysis.ipynb: jupyter notebook to analyse Binance transactions 
 

REQUIREMENTS
------------

Google BigQuery console (https://cloud.google.com/bigquery/docs/quickstarts/quickstart-web-ui)

NetworkX library (https://networkx.org/)
* to construct graphs and compute network properties using graph algorithms

Powerlaw library (https://pypi.org/project/powerlaw/)
* to study heavy tailed distribution of network


INSTALLATION
------------

BigQuery is a fully cloud based platform and is accessed through its console. All other Python libraries can be installed using pip.  



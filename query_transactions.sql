
/* 
query public dataset by block_timestamp
exclude transactions with input, no value and null to_address
query is repeated for each year 2015-2020
query results saved to table of format 'ethereum-305608.transactions.transactions_%year'
*/
SELECT from_address, to_address, value/1e18 as value
FROM `bigquery-public-data.crypto_ethereum.transactions`
WHERE block_timestamp>='2015-12-01 00:00:00 UTC' and block_timestamp<='2015-12-31 23:59:59 UTC'
and value!=0 and to_address is not null and input='0x';

/*
get transactions to or from the Binance account
exclude transactions with input and no value
query results saved to table 'ethereum-305608.transactions.transactions_binance'
*/
SELECT from_address, to_address, value/1e18 as value, block_timestamp
FROM `bigquery-public-data.crypto_ethereum.transactions`
WHERE (from_address='0x3f5ce5fbfe3e9af3971dd833d26ba9b5c936f0be' OR to_address='0x3f5ce5fbfe3e9af3971dd833d26ba9b5c936f0be')
AND value!=0 AND input='0x';

/*
get transactions from binance dataset by block_timestamp
query is repeated for each year 2017-2020
*/
SELECT from_address, to_address, value
FROM `ethereum-305608.transactions.transactions_binance`
where block_timestamp>='2017-01-01 00:00:00 UTC' and block_timestamp<='2017-12-31 23:59:59 UTC';

/*
get lifetime of account (time of last transaction - time of first transaction)
*/
SELECT from_address, to_address, abs(TIMESTAMP_DIFF(max(block_timestamp),min(block_timestamp),MINUTE)) as lifetime
FROM `ethereum-305608.transactions.transactions_binance`
group by from_address, to_address;

/*
get average frequency of trade (lifetime / number of transactions)
*/
SELECT from_address, to_address, abs(TIMESTAMP_DIFF(max(block_timestamp),min(block_timestamp),MINUTE))/(count(value)-1) as freq
FROM `ethereum-305608.transactions.transactions_binance`
group by from_address, to_address
having count(value)>1;

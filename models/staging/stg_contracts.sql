{{ config(materialized='table') }}

SELECT 
ADDRESS, BLOCK_HASH, BLOCK_NUMBER, BLOCK_TIMESTAMP, BYTECODE, DATE, LAST_MODIFIED
FROM 
{{ source('ethsnowflake', 'CONTRACTS') }}
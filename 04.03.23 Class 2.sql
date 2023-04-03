USE BANK;

SELECT* FROM client;

SELECT * FROM client ORDER BY district_id ASC;

# Get the id values of the first 5 clients from district_id with a value equal to 1.
select client_id from client
where district_id=1
order by district_id 
limit 5;

# In the client table, get an id value of the last client where the district_id is equal to 72.

SELECT* FROM client;
SELECT * FROM client ORDER BY client_id DESC;

select client_id from client
where district_id=72
order by district_id;



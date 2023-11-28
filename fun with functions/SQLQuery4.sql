/*how to extract first name from contact name*/

/*I feel like I essentially need to create a filter for what gets included when I filter it, but that will be hard given that the 
first names have verying numbers of letters*/

select ContactName from t_w3_schools_customers
/*that is as far as I kenw how to go so I did some reserach and came back with this*/

SELECT SUBSTRING(ContactName, 1, CHARINDEX(' ', ContactName) - 1) AS Firstname,     
       SUBSTRING(ContactName,
                 CHARINDEX(' ', ContactName) + 1,
                 LEN(ContactName) - CHARINDEX(' ', ContactName)) AS Lastname
FROM t_w3_schools_customers

/*but that didnt work so I after more hours of searching got this solution*/



SELECT [ContactName],
       LEFT([ContactName],CHARINDEX(' ',[ContactName] + ' ')-1)  AS FIRST_NAME,
       SUBSTRING([ContactName],CHARINDEX(' ',[ContactName] + ' ')+1,LEN([ContactName])) AS LAST_NAME
FROM   t_w3_schools_customers

/*but then if I just want first name*/

SELECT [ContactName],
       LEFT([ContactName],CHARINDEX(' ',[ContactName] + ' ')-1)  AS FIRST_NAME
       
FROM t_w3_schools_customers;

/*Then if I just want last name*/

SELECT [ContactName],
       
       SUBSTRING([ContactName],CHARINDEX(' ',[ContactName] + ' ')+1,LEN([ContactName])) AS LAST_NAME
FROM   t_w3_schools_customers
       
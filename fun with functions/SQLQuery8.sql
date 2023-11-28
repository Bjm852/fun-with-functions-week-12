/*When was the record last modified*/

/*to be honest I have no clue what to do to find this answer but ill start my research by first following along with the pictures */





create trigger trg_w3_schools_customers_last_mod on dbo.t_w3_schools_customers
after update
AS
    UPDATE dbo.TimeEntry
    SET ModDate = GETDATE()
    WHERE ID IN (SELECT DISTINCT ID FROM Inserted)

	/*there is my post research query*/

	
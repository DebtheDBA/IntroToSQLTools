DECLARE @lastname varchar(50)
SELECT @lastname = '$(lastname)'

SELECT VG.Order_ID,
       VG.Order_Date,
       p.First_Name,
       p.Last_Name,
       corp.Corporation_Name,
       G.Gadget_Name,
       VG.Number_Ordered,
       VG.Price_Per_Item,
       VG.Tax,
       VG.Shipping,
       VG.Total_Due
FROM Villain.Gadget_Order_Form AS VG
    JOIN dbo.Person AS p
        ON VG.Person_ID = p.Person_ID
    JOIN Villain.Gadget AS G
        ON VG.Gadget_ID = G.Gadget_ID
    LEFT JOIN dbo.Corporation AS corp
        ON corp.Corporation_ID = VG.Corporation_ID
WHERE p.Last_Name = CASE WHEN @lastname LIKE '$%' THEN p.Last_Name ELSE @lastname END
;
USE ONLINE_SHOP
GO

/*
 * Viết stored-procedure tính tổng 2 số a, b và in kết quả theo định dạng sau:
	'Tổng 2 số’ + @a + ‘và’ + @b ‘là:’ + @kq
 */
IF OBJECT_ID('uspCau1', 'p') IS NOT NULL
	DROP PROC uspCau1
GO


 CREATE PROC uspCau1
	@a float = 0,
	@b float = 0,
	@tong float OUT
AS
	--RETURN (@a + @b)
	SET @tong = @a + @b
GO

--Goi

DECLARE @x float = 1.5,@y float =3.1,@tong float = 0
EXEC uspCau1 @x, @y, @tong OUT
PRINT CAST (@x AS varchar)+ ' + '+
	CAST(@y AS VARCHAR)+' = '+
	CAST(@tong AS VARCHAR)


/*
 * Viết stored-procedure tính tổng 2 số a, b và in kết quả theo định dạng sau:
	'Tổng 2 số’ + @a + ‘và’ + @b ‘là:’ + @kq
 */
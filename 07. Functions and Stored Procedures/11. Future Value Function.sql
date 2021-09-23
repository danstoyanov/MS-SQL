CREATE OR ALTER FUNCTION ufn_CalculateFutureValue (@sum DECIMAL(15,4), @rate FLOAT, @years INT)
RETURNS DECIMAL(15,4)
AS
BEGIN
	DECLARE @money DECIMAL(15,4);

	SET @money = @sum * POWER((1.0 + @rate), @years)

	RETURN @money
END

-- test
SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5)
CREATE OR ALTER FUNCTION ufn_IsWordComprised(@SetOfLetters VARCHAR(MAX), @Word VARCHAR(MAX))
RETURNS BIT 
AS
BEGIN
		DECLARE @Counter INT = 1;

		WHILE (@Counter <= LEN(@Word))
		BEGIN
			DECLARE @currentLetter CHAR(1) = SUBSTRING(@Word, @Counter, 1) 

			IF (CHARINDEX (@currentLetter, @SetOfLetters) = 0)
				RETURN 0

			SET @Counter += 1
		END
	RETURN 1;
END

-- test
SELECT 
	dbo.ufn_IsWordComprised('oistmiahf', 'Sofia'),
	dbo.ufn_IsWordComprised('oistmiahf', 'halves'),
	dbo.ufn_IsWordComprised('bobr', 'Rob'),
	dbo.ufn_IsWordComprised('pppp', 'Guy') 
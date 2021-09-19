SELECT wd.DepositGroup, 
	MAX(wd.MagicWandSize) AS LongestMagicWand
	FROM WizzardDeposits wd
	GROUP BY wd.DepositGroup
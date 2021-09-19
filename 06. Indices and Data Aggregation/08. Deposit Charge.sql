SELECT wd.DepositGroup,
	mwc.MagicWandCreator AS [MagicWandCreator],
	MIN(wd.DepositCharge) AS [MinDepositCharge]
	FROM WizzardDeposits wd
	JOIN WizzardDeposits mwc ON mwc.MagicWandCreator = wd.MagicWandCreator
	GROUP BY wd.DepositGroup, mwc.MagicWandCreator
	ORDER BY mwc.MagicWandCreator, wd.DepositGroup
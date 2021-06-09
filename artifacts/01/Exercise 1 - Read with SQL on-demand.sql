SELECT
    COUNT(*)
FROM
    OPENROWSET(
        BULK 'https://<primary_storage>.dfs.core.windows.net/dev/wwi-factsale.csv',
 		FORMAT = 'CSV', 
		FIELDTERMINATOR ='|', 
        FIELDQUOTE = '',
		FIRSTROW = 2
    ) 
WITH 
    (
        [Sale Key] BIGINT,
        [City Key] INT,
        [Customer Key] INT,
        [Bill To Customer Key] INT,
        [Stock Item Key] INT,
        [Invoice Date Key] DATE,
        [Delivery Date Key] INT,
        [Salesperson Key] INT,
        [WWI Invoice ID] INT,
        [Description] VARCHAR(200),
        [Package] VARCHAR(10),
        [Quantity] INT,
        [Unit Price] DECIMAL(6,2),
        [Tax Rate] DECIMAL(6,2),
        [Total Excluding Tax] DECIMAL(6,2),
        [Tax Amount] DECIMAL(6,2),
        [Profit] DECIMAL(6,2),
        [Total Including Tax] DECIMAL(6,2),
        [Total Dry Items] INT,
        [Total Chiller Items] INT,
        [Lineage Key] INT
    ) as S
SELECT table_name,table_rows
FROM information_schema.TABLES 
WHERE table_name IN (
'RES_COM_PFT_FCST',
'RES_COM_INVEST_RATING',
'STK_INCOME_GEN',
'RES_REPORT_MAIN'
);

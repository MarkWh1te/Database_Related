
       select NP_P3
       from RES_COM_PFT_FCST
       where RES_ID in (
       select RES_ID
       FROM RES_REPORT_MAIN
       WHERE INNER_CODE in (
       select INNER_CODE
       FROM STK_CODE
       WHERE STOCKCODE = '000001'
       )
       AND WRITEDATE
       BETWEEN '2014-07-05'
       AND '2015-01-05')
       AND NP_P3 is not NULL
       
			
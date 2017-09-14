            select a.NP_P3,b.WRITEDATE
            from RES_COM_PFT_FCST a 
			left join RES_REPORT_MAIN b
            on a.RES_ID = b.RES_ID
            WHERE b.INNER_CODE in (
            select INNER_CODE
            FROM STK_CODE
            WHERE STOCKCODE = '600871'
            )
            AND b.WRITEDATE
            BETWEEN '2017-01-24'
            AND '2017-07-24'
            AND a.NP_P3 is not NULL
            ORDER BY b.WRITEDATE

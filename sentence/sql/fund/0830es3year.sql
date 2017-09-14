            select NP_P3
            from RES_COM_PFT_FCST
            where RES_ID in (
            select RES_ID
            FROM RES_REPORT_MAIN
            WHERE INNER_CODE in (
            select INNER_CODE
            FROM STK_CODE
            WHERE STOCKCODE = '000030'
            )
            AND WRITEDATE
            BETWEEN '2017-02-02'
            AND '2017-08-02')
            AND NP_P3 is not NULL

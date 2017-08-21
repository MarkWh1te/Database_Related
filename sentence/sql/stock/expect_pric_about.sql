select count(1),Invest_Rating
        from RES_COM_INVEST_RATING as a
        where RES_ID IN (
        select RES_ID
        FROM RES_REPORT_MAIN
        WHERE INNER_CODE IN (
        SELECT INNER_CODE
        FROM STK_CODE
        WHERE STOCKCODE = '000001'
        )
        AND WRITEDATE
        BETWEEN '2010-07-04'
        AND '2011-01-04'
        )
        group by a.Invest_Rating;
        
select P160101,rpt_date,startdate
           from STK_INCOME_GEN
		where month(startdate)=1
        and day(startdate)=1
        and month(enddate) = 12
        and day(enddate)=31
	
        and ENDDATE <= '2015-01-05'
        and RPT_DATE <= '2015-01-05'
        and year(startdate) = 2014
        and P160101 is not null
        and COMCODE in (
        select COMCODE
        from stk_code
        where STOCKCODE= '000001'
        )
        
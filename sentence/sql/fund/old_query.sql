        select P240801, a.ENDDATE,a.STARTDATE,b.DECLAREDATE,a.RPT_DATE
        from stk_income_gen a,STK_FIN_IDX b
        where a.comcode in
        (
        select comcode
        from stk_code
        where STOCKCODE='000001'
        )
        and a.ENDDATE = b.ENDDATE
        and a.rpt_type='合并'
        and a.rpt_date=a.enddate
        and month(a.startdate)=1
        and day(a.startdate)=1
        and month(a.enddate)=12
        and day(a.enddate)=31
        and P240801 is not null
        and b.DECLAREDATE<='2017-01-03'
        and b.enddate <='2016-01-03'
        and a.rpt_date<='2016-01-03'
        order by a.RPT_DATE DESC 
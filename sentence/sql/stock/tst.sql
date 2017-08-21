select P240801,RPT_DATE,RPT_SRC,RPT_TYPE,COMCODE from STK_INCOME_GEN as A
where year(A.RPT_DATE) = year(A.STARTDATE)
and year(A.STARTDATE) = year(A.ENDDATE)
and month(A.RPT_DATE) = month(A.ENDDATE)
and month(A.RPT_DATE) = 12
and day(A.RPT_DATE) = 31
and day(A.RPT_DATE) = day(A.ENDDATE)
and month(A.STARTDATE) = 1
and day(A.STARTDATE) = 1
#and A.RPT_TYPE = '2'
and COMCODE in (
select 
)
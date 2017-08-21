select P240801
from stk_income_gen
where comcode in
(
select comcode
from stk_code
where STOCKCODE='{stockcode}'
)
and year(startdate)={year}
and rpt_type='合并'
and rpt_date=enddate
and month(startdate)=1
and day(startdate)=1
and month(enddate)=12
and day(enddate)=31
ORDER BY ENDDATE DESC
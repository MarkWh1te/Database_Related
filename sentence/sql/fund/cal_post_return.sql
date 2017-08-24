select FAC_UNIT_NET,tradedate,a.INNER_CODE
from ANA_FND_NAV_CALC a  
where a.INNER_CODE = 102000001
and a.ISVALID =1
and a.tradedate in ('1999-11-12','1999-12-03')
order by a.tradedate desc;
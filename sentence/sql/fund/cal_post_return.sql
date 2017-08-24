select FAC_UNIT_NET,tradedate,a.INNER_CODE
from ANA_FND_NAV_CALC a  
left join fnd_gen_info b
on a.INNER_CODE = b.INNER_CODE
where b.FUND_ID = 102001086
and a.ISVALID =1
and b.ISVALID =1
and a.tradedate = '1999-11-12'
or a.tradedate = '1999-12-03'
#order by tradedate
limit 10;
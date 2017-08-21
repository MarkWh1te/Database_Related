#select a.INNER_CODE,b.indi_name
select b.POST_DATE,b.RESI_DATE,a.FUND_CODE,b.FUND_ID,b.declaredate
from FND_MANAGER b
left join fnd_gen_info a 
on a.FUND_ID = b.FUND_ID
where b.post_status=1
order by b.declaredate
limit 10;
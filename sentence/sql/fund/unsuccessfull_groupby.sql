
select b.indi_name
from FND_MANAGER b
left join fnd_gen_info a 
on a.FUND_ID = b.FUND_ID
where b.post_status=1
AND ( b.POST_DATE>='20170101' AND   b.POST_DATE<'20170801' )
group by b.indi_name
limit 10

#group by b.indi_name
#order by b.declaredate
#limit 10
#group by b.indi_name;
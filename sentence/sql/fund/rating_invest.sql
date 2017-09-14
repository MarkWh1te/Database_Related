select invest_rating,count(INVEST_RATING),invest
from (
select a.*,b.INVEST_RATING,
case when b.invest_rating = '买入' then 5.0
     when b.invest_rating = '增持' then 4.0
  when b.invest_rating = '中性' then 3.0
  when b.invest_rating = '减持' then 2.0
  when b.invest_rating = '卖出' then 1.0 end invest  from 
  (select stockcode, a.inner_code,b.RES_ID,b.SEC_CODE,writedate from stk_code a 
inner join RES_REPORT_MAIN b on a.inner_code =b.inner_code 
where stockcode ='000002')
  a inner join RES_COM_INVEST_RATING b 
on a.RES_ID=b.RES_ID and a.INNER_CODE=b.INNER_CODE and WRITEDATE between '2016-08-03'and '20170203'
and b.isvalid=1 
and not b.invest_rating = '不评级'
order by stockcode, invest_rating, writedate desc
) x
group by INVEST_RATING

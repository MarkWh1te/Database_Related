select stockcode,tradedate,maxwriteyear from 
(
select stockcode,tradedate,dateadd(month,-6,tradedate) new_tradedate,b.maxwritedate,b.maxwriteyear,inner_code
from stk_mkt_day a 
outer apply 
(
select top 1 year(writedate) maxwriteyear, writedate maxwritedate,SEC_CODE,INNER_CODE from RES_REPORT_MAIN
where writedate between dateadd(month,-6,tradedate) and a.tradedate 
and isvalid=1 and a.STOCKCODE=sec_code
order by writedate desc
--order by WRITEDATE desc
) b where  isvalid=1 and a.stockcode in
(
'000090' ,'000776' ,'000878' ,'000898' ,'000900' ,'000979' ,'000999' ,'002001'  
,'002010' ,'002120' ,'002219' ,'002289' ,'002304' ,'002369' ,'002400' ,'002513'  
,'600015' ,'600028' ,'600030' ,'600396' ,'600522' ,'600538' ,'600585' ,'600679'  
,'600782' ,'600871' ,'600982' ,'601268' ,'601857' ,'603320' 
) and tradedate between '20170724' and '20170728'
--order by tradedate desc
) c 
--maxwritedate is null  and 
order by stockcode, tradedate 

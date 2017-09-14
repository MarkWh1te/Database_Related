select  a.INNER_CODE,INDX_CODE,b.TRADEDATE,b.lclose,b.TCLOSE 
from INDX_GEN_INFO a
inner join  INDX_MKT b 
on a.INNER_CODE =b.INNER_CODE 
where a.ISVALID=1 and b.isvalid=1
#and tradedate = 日期
and INDX_CODE  = '000300' order by tradedate desc
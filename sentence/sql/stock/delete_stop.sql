#select b.stockcode,a.CHANGEDATE,a.enddate
select count(1)
from STK_STATUS_CHNG a,stk_code b
where a.isvalid =1  and b.isvalid =1 and a.INNER_CODE=b.INNER_CODE and a.STATUS_TYPE = 2  and a.CHANGEDATE >='2009-1-1'
and STK_TYPE_REF =1

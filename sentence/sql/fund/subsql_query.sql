SELECT b.declaredate,b.indi_name,b.post_date,b.resi_date,count(*)
FROM FND_MANAGER  b
left join fnd_gen_info a 
on a.FUND_ID = b.FUND_ID
WHERE b.POST_STATUS = 1 AND b.ISVALID=1
      AND RESI_DATE = (SELECT max(RESI_DATE)
                       FROM FND_MANAGER
                       WHERE b.indi_id = FND_MANAGER.indi_id
                        and b.FUND_ID =  FND_MANAGER.FUND_ID)

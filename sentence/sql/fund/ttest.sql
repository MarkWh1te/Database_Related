        select post_date,post_status,resi_date,declaredate
        from FND_MANAGER
        where RESI_DATE >= '19991022'
		
        #and FUND_ID = 102001086
		#and FUND_ID = 102001087
        #and INDI_ID = 302000045
        and POST_STATUS = 2
        and ISVALID = 1
        order by declaredate limit 2
        
        
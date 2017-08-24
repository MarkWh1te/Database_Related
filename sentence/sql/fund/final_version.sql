 SELECT
          concat(
        concat(b.FUND_CODE, '.', CASE b.TRADE_MKT
                                   WHEN 1
                                     THEN 'SZ'
                                   WHEN 2
                                     THEN 'SH'
                                   ELSE 'CW' END),'-',DATE_FORMAT(a.declaredate, '%Y%m%d')) _id,
           a.declaredate declare_date,
          
        concat(b.FUND_CODE, '.', CASE b.TRADE_MKT
                                   WHEN 1
                                     THEN 'SZ'
                                   WHEN 2
                                     THEN 'SH'
                                   ELSE 'CW' END) innercode,
           b.FUND_CODE symbol,
           b.FUNDNAME name,
           a.INDI_NAME manager_name
        from FND_MANAGER a
        left join fnd_gen_info b
        on a.FUND_ID = b.FUND_ID
        WHERE a.ISVALID = 1 AND b.ISVALID = 1
        and a.post_status = 1
         AND ( a.declaredate<'2017-08-22 16:36:08.133057')
        limit 100

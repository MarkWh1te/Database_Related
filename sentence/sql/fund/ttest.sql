SELECT
          concat(
          concat(b.FUND_CODE, '.', CASE b.TRADE_MKT
          WHEN 1
          THEN 'SZ'
          WHEN 2
          THEN 'SH'
          ELSE 'CW' END),'-',b.declaredate) _id,
                 concat(b.FUND_CODE, '.', CASE b.TRADE_MKT
                 WHEN 1
                 THEN 'SZ'
                 WHEN 2
                 THEN 'SH'
                 ELSE 'CW' END) innercode,
                  a.FUND_CODE symbol,
                  b.INDI_NAME manager_name,
                 from FND_MANAGER b
                 left join fnd_gen_info a
                 on a.FUND_ID = b.FUND_ID
                 WHERE a.ISVALID = 1 AND b.ISVALID = 1
                 AND ( a.record_date<'2017-08-22 15:33:02.661777')
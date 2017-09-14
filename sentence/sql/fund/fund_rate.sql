        SELECT
          concat(
        concat(b.FUND_CODE, '.', CASE b.TRADE_MKT
           WHEN 1
             THEN 'SZ'
           WHEN 2
             THEN 'SH'
           ELSE 'CW' END),'-',DATE_FORMAT(a.declaredate, '%Y%m%d')) _id,
          
        concat(b.FUND_CODE, '.', CASE b.TRADE_MKT
           WHEN 1
             THEN 'SZ'
           WHEN 2
             THEN 'SH'
           ELSE 'CW' END) innercode,
           a.declaredate declare_date,
           c.REF_NAME REF_NAME1,
           a.CHNG_MAX_TERM 
        from FND_CHAG_RATE a
        left join fnd_gen_info b
        on a.INNER_CODE = b.INNER_CODE
        left join GEN_REF c
        on a.CHAG_RATE_RELA=c.REF_CODE and c.cls_code= 3028
        left join GEN_REF d
        on a.PERT_VAL_UNIT=d.REF_CODE and d.cls_code= 3030
        left join GEN_REF e
        on a.CHAG_RATE_RELA=e.REF_CODE and e.cls_code =3029
        AND ( a.declaredate<'2017-09-06 10:45:04.144253')

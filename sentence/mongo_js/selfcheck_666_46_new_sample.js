var i = 1;db.getCollection('Z3_EQUITY_HISTORY').find({    'symbol':/^3/,    'trade_date':{         '$gte':ISODate('20170821'),         '$lte':ISODate('20170913')    }     },{     'trade_date':1, 'symbol':1, 'mkt_idx.tcap':1, 'mkt_idx.mktcap':1, 'mkt_idx.mktcap_a':1, 'mkt_idx.pe_lyr':1, 'mkt_idx.pe_ttm':1, 'mkt_idx.ps':1, 'mkt_idx.peg':1, 'mkt_idx.pb':1, 'mkt_idx.pc':1, 'mkt_idx.div_rate':1, 'mkt_idx.price_cash':1, 'mkt_idx.is_stop':1, 'mkt_idx.cur_chng_pct':1, 'mkt_idx.rela_volume':1, 'mkt_idx.volume':1, 'mkt_idx.price':1, 'mkt_idx.rsi_14':1, 'mkt_idx.is_gap_down':1, 'mkt_idx.is_gap_up':1, 'mkt_idx.gap':1, 'mkt_idx.chng_pct_week':1, 'mkt_idx.is_limit_up':1, 'mkt_idx.is_limit_down':1, 'mkt_idx.chng_pct_from_open':1, 'signal_normal.signal_normal_1':1, 'signal_normal.signal_normal_2':1, 'signal_normal.signal_normal_3':1, 'signal_normal.signal_normal_4':1, 'signal_normal.signal_normal_5':1, 'signal_normal.signal_normal_6':1, 'signal_normal.signal_normal_7':1, 'signal_normal.signal_normal_8':1, 'signal_normal.signal_normal_9':1,    'signal_normal.signal_normal_17':1,    'signal_normal.signal_normal_20':1,    'signal_normal.signal_normal_21':1,    'signal_normal.signal_normal_22':1,    'signal_normal.signal_normal_23':1,    'signal_normal.signal_normal_24':1,    'signal_normal.signal_normal_25':1,    'signal_normal.signal_normal_28':1,    'signal_normal.signal_normal_29':1,    'signal_normal.signal_normal_30':1,    'signal_normal.signal_normal_31':1,    'signal_normal.signal_normal_33':1     }).sort({'trade_date':i})
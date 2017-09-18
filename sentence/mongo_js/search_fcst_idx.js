//  order sign
var i = 1
var fields_list = ['trade_date','symbol','mkt_idx.tcap'];
var fields_dict = fields_list.map(x=>({x:{'$exist':false}}))
var search_dict = {
        'trade_date':{
         '$gte':ISODate('20170101'),
         '$lte':ISODate('20170728')
    }，
    'symbol':{
        '$in':['600871','002219','002024','000002','000001','000829','000009','600000','600019','600009','600519', '300050']
    }
}
db.getCollection('Z3_EQUITY_HISTORY').find(
    search_dict,
    {
        'fcst_idx':1
    }
).sort({'trade_date':i})
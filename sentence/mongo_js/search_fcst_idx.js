var i = 1
var fields_list = ['trade_date','symbol','mkt_idx.tcap'];
var fields_dict = fields_list.map(x=>({x:{'$exist':false}}))
var search_dict = {
        'trade_date':{
         '$gte':ISODate('20070101'),
         '$lte':ISODate('20170728')
    },
        'fsct_idx.fcst_eps_next1':{
            '$exists':true
        }
}
db.getCollection('Z3_EQUITY_HISTORY').find(
    search_dict,
    {}
).sort({'trade_date':i}).count()



// db.getCollection('Z3_EQUITY_HISTORY').find(
// {
//     // 'symbol':/^3/,
//     'trade_date':{
//          '$gte':ISODate('20070101'),
//          '$lte':ISODate('20170728')
//     }
//     ''
//      },{
//      }
// ).sort({'trade_date':i})

db.Z3_EQUITY_PROFILE_2.aggregate([
     { $group : { _id : "$sw_indu_code", stockcode: { $push: "$symbol" } } }
   ])

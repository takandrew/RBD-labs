1. db.product.find({"specs.price": {$lt: 1200}, type: "Pc"},{model: 1, "specs.speed": 1, "specs.Hd": 1, _id: 0})
2. db.product.distinct("maker",{type: "Printer"},{maker: 1, _id: 0})
3. db.product.find({"specs.price": {$gt: 2000}, type: "Laptop"},{model: 1, "specs.Ram": 1, "specs.Rd": 1, _id: 0})
4. db.product.find({type: "Printer", "specs.color": "C"})
5. db.product.find({"specs.price": {$lte: 2000}, $or: [{"specs.Rd": "12xDVD"}, {"specs.Rd": "16xDVD"}]},{model: 1, "specs.speed": 1, "specs.Hd": 1, _id: 0})
6. db.product.find({type: "Laptop", "specs.Hd": {$gte: 30}},{maker: 1, "specs.speed": 1, _id: 0})
7. db.product.find({maker: "B"},{model: 1, "specs.price": 1, _id: 0})
8. let subQuery = db.product.distinct("maker", {type: "Pc"});
	db.product.distinct("maker", {type: "Laptop", maker: {$nin: subQuery}}, {maker: 1, _id: 0});
9. db.product.aggregate([
		{$match: {type: "Pc"}},
		{$group: {_id: "$specs.Hd", count: {$sum: 1}}}, 
		{$match: {count: {$gt: 1}}},
		{$project: {_id: 0, "specs.Hd": "$_id"}}
	])
11. db.product.aggregate([
		{$match: {$or: [{type: "Pc"}, {type: "Laptop"}], "specs.speed": {$gte: 1000}}},
		{$group: {_id: "$maker", count: {$sum: 1}}}, 
		{$match: {count: {$gt: 1}}},
		{$project: {_id: 0, "maker": "$_id"}}
	])
12. db.product.distinct("maker",{type: "Pc", "specs.speed": {$gte: 1200}},{maker: 1, _id: 0})
15. db.product.aggregate([
	  {$match: {$or: [{type: "Pc"}, {type: "Laptop"}, {type: "Printer"}]}},
	  {$sort: {"specs.price": -1}},
	  {$limit: 1} 
	]);
16. db.product.aggregate([
	  {$match: {type: "Printer", "specs.color": "C"}},
	  {$sort: {"specs.price": 1}},
	  {$limit: 1},
	  {$project: {maker: 1, _id: 0}} 
	]);
18. db.product.aggregate([
	  {$match: {type: "Pc"}},
	  {$group: {_id: null, avgSpeed: {$avg: "$specs.speed"}}},
	  {$project: {"avgSpeed": 1, _id: 0}}
	]);
19. db.product.aggregate([
	  {$match: {type: "Laptop", "specs.price": {$gt: 2000}}},
	  {$group: {_id: null, avgSpeed: {$avg: "$specs.speed"}}},
	  {$project: {"avgSpeed": 1, _id: 0}}
	]);
20. db.product.aggregate([
	  {$match: {type: "Pc", maker: "A"}},
	  {$group: {_id: null, avgSpeed: {$avg: "$specs.price"}}},
	  {$project: {"avgSpeed": 1, _id: 0}}
	]);
21. db.product.aggregate([
	  {$match: {$or: [{type: "Pc"}, {type: "Laptop"}], maker: "D"}},
	  {$group: {_id: null, avgSpeed: {$avg: "$specs.price"}}},
	  {$project: {"avgSpeed": 1, _id: 0}}
	]);
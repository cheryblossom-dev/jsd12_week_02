use('sample_mflix')
db.movies.find({type:'movie',rated:'TV-G'}).count()
db.movies.findOne({type:'movie',rated:'TV-G'})

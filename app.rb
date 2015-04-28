require('sinatra')
require('sinatra/reloader')
require('./lib/location')
also_reload('lib/**/*.rb')

get('/') do
@places = Location.all()
erb(:index)
end

post('/places') do
  place = params.fetch('place')
  place_return = Location.new(place)
  place_return.save()
  erb(:success)
end

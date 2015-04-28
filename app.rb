require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/places")

get("/") do
  @places=Places.all()
  erb(:index)
end

post("/places") do
  countries = params.fetch("countries")
  places = Places.new(countries)
  places.save()
  erb(:success)
end

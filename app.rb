require './lib/yelpresult'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('./**/*.rb')

get '/' do
  Yelp.configure
  @result = Yelp.client.search('San Francisco', {term: 'fish'})
  erb :index
end

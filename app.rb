require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pg'
require './lib/allergen'
require './lib/keyword'
require './lib/yelpresult'
require 'pry'
also_reload('./**/*.rb')

get '/' do
  Yelp.configure
  @result = Yelp.client.search('San Francisco', {term: 'fish'})
  erb :index
end

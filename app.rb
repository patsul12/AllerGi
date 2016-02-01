<<<<<<< HEAD
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pg'
require './lib/allergen'
require './lib/keyword'
require "pry"

get '/' do
 erb :index
=======
require './lib/yelpresult'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
also_reload('./**/*.rb')

get '/' do
  Yelp.configure
  @result = Yelp.client.search('San Francisco', {term: 'fish'})
  erb :index
>>>>>>> e17fd87c586b3e1660fc284fe55bcd106783ed20
end

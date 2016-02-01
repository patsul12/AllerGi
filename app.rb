require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pg'
require './lib/allergen'
require './lib/keyword'
require "pry"

get '/' do
 erb :index
end

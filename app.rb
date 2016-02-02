require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pg'
require './lib/allergen'
require './lib/keyword'
require './lib/yelpresult'
require 'pry'
require 'net/http'
require './lib/yelpresult'
require './lib/dish'
require './lib/restaurant'
require './lib/menuresult'
require './lib/locuresult'
also_reload('./**/*.rb')

get '/' do
  Yelp.configure
  @result = Yelp.client.search('San Diego', {term: 'restaurant', category: 'food'})

  @result.businesses.each do |br|
    binding.pry
  end
  erb :index
end

#@result.businesses.each do |r|
  #Restaurant.create( {name: r.name, phone: r.display_phone, location: r.location.display_address[ 0 ], views: 0})
#end

=begin

url = "http://www.yelp.com/menu/" + br.id.to_s
html_url = URI.parse( url )
if !html_url.path.empty?
  req = Net::HTTP.new(html_url.host, html_url.port)
  res = req.request_head(html_url.path)

  if res.code == 200
    result_html = MenuResult.get_html( url )
  end
end

=end

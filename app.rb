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

get('/allergens') do
  @allergens = Allergen.all()
  erb(:allergens)
end

get('/allergens/new') do
  erb(:allergen_new)
end

get('/allergens/:id') do
  id = params[:id].to_i
  @allergen = Allergen.find(id)
  @restaurants = @allergen.restaurants()
  erb(:allergen_page)
end

get('/allergens/:id/edit') do
  @allergen = Allergen.find(params.fetch("id").to_i)
  erb(:allergen_edit)
end

get('/allergens/:id/delete') do
  @allergen = Allergen.find(params.fetch("id").to_i)
  @allergen.delete
  redirect ('/allergens')
end

patch('/allergens/:id') do
  @allergens = Allergen.all()
  allergen_name = params.fetch("allergen_name")
  @allergen = Allergen.find(params.fetch("id").to_i)
  @allergen.update({:allergen_name => allergen_name})
  erb(:allergens)
end

post('/allergens') do
  Allergen.create(params).save
  redirect ('/allergens')
end

get('/restaurants') do
  @restaurants = Restaurant.all()
  erb(:restaurants)
end

get('/restaurants/new') do
  erb(:restaurant_new)
end

get('/restaurants/:id') do
  id = params[:id].to_i
  @restaurant = Restaurant.find(id)
  @allergens = @restaurant.allergens()
  erb(:restaurant_page)
end

get('/restaurants/:id/edit') do
  @restaurant = Restaurant.find(params.fetch("id").to_i)
  erb(:restaurant_edit)
end

get('/restaurants/:id/delete') do
  @restaurant = Restaurant.find(params.fetch("id").to_i)
  @restaurant.delete
  redirect ('/restaurants')
end

patch('/restaurants/:id') do
  @restaurants = Restaurant.all()
  brand_name = params.fetch("restaurant_name")
  @restaurant = Restaurant.find(params.fetch("id").to_i)
  @restaurant.update({:restaurant_name => restaurant_name})
  erb(:restaurants)
end

post('/restaurants') do
  Restaurant.create(params).save
  redirect ('/restaurants')
end

get('/keywords') do
  @keywords = Keyword.all()
  erb(:keywords)
end

get('/keywords/new') do
  erb(:keyword_new)
end

get('/keywords/:id') do
  id = params[:id].to_i
  @keyword = Keyword.find(id)
  @allergens = @keyword.allergens()
  erb(:keyword_page)
end

get('/keywords/:id/edit') do
  @keyword = Keyword.find(params.fetch("id").to_i)
  erb(:keyword_edit)
end

get('/keywords/:id/delete') do
  @keyword = Keyword.find(params.fetch("id").to_i)
  @keyword.delete
  redirect ('/keywords')
end

patch('keywords/:id') do
  @keywords = Keyword.all()
  keyword_name = params.fetch("keyword_name")
  @keyword = Keyword.find(params.fetch("id").to_i)
  @keyword.update({:keyword_name => keyword_name})
  erb(:keywords)
end

post('/keywords') do
  Keyword.create(params).save
  redirect ('/keywords')
end

get('/dishes') do
  @dishes = Dish.all()
end

get('/dishes/new') do
  erb(:dish_new)
end

get('/dishes/:id') do
  id = params[:id].to_i
  @dish = Dish.find(id)
  @allergens = @dish.allergens()
  erb(:keyword_page)
end

get('/dishes/:id/edit') do
  @dish = Dish.find(params.fetch("id").to_i)
  erb(:dish_edit)
end

get('/brands/:id/delete') do
  @dish = Dish.find(params.fetch("id").to_i)
  @dish.delete
  redirect ('/dishes')
end

patch('/dishes/:id') do
  @dishes = Dish.all()
  dish_name = params.fetch("dish_name")
  @dish = Dish.find(params.fetch("id").to_i)
  @dish.update({:dish_name => dish_name})
  erb(:dishes)
end

post('/dishes') do
  Dish.create(params).save
  redirect ('/dishes')
end

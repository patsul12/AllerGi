require('capybara/rspec')
require('spec_helper')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('add allergen to restaurant', {:type => :feature}) do
  it('allows a user to add an allergen to a restaurant') do
    Restaurant.create({:restaurant_name => 'The Greasy Spork'})
    Allergen.create({:allergen_name => 'Bee Venom'})
    visit('/')
    click_link('See Restaurants')
    expect(page).to have_content('The Greasy Spork')
    click_link('Add Allergen')
    expect(page).to have_content('Add an allergen')
    select('Shellfish', :from => 'allergen_id')
    click_button('Add Allergen to Restaurant')
    expect(page).to have_content('The Greasy Spork')
  end
end

describe('add keyword to allergen', {:type => :feature}) do
  it('allows a user to add a keyword to an allergen') do
    Keyword.create({:keyword_name => 'Pastry'})
    Allergen.create({:allergen_name => 'Gluten'})
    visit('/')
    click_link('See Allergens')
    expect(page).to have_content('Gluten')
    click_link('Add Keyword')
    expect(page).to have_content('Add a keyword')
    select('Pastry', :from => 'keyword_id')
    click_button('Add Keyword to Allergen')
    expect(page).to have_content('Gluten')
  end
end

describe('add a dish to a restaurant', {:type => :feature}) do
  it('allows a user to add a dish to a restaurant') do
    Dish.create({:keyword_name => 'Ramen'})
    Restaurant.create({:restaurant_name => 'The Greasy Spork'})
    visit('/')
    click_link('See Restaurants')
    expect(page).to have_content('The Greasy Spork')
    click_link('Add Dish')
    expect(page).to have_content('Add a new dish')
    select('Ramen', :from => 'dish_id')
    click_button('Add Dish to Restaurant')
    expect(page).to have_content('The Greasy Spork')
  end
end

describe('add a allergen to a dish', {:type => :feature}) do
  it('allows a user to add a allergen to a dish') do
    Dish.create({:dish_name => 'Ramen'})
    Allergen.create({:allergen_name => 'Gluten'})
    visit('/')
    click_link('See Dishes')
    expect(page).to have_content('Ramen')
    click_link('Add Allergen')
    expect(page).to have_content('Add an allergen')
    select('Gluten', :from => 'allergen_id')
    click_button('Add Allergen to Dish')
    expect(page).to have_content('Gluten')
  end
end

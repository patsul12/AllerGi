class JoinDishRestaurant < ActiveRecord::Migration
  def change
    create_table( :dishes_restaurants ) do |dr|
      dr.column( :dish_id, :int )
      dr.column( :restaurant_id, :int)
    end
  end
end

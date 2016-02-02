class GiveRestaurantsViewCount < ActiveRecord::Migration
  def change
    add_column(:restaurants, :views, :int)
  end
end

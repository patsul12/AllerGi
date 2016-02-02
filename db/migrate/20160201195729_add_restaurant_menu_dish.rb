class AddRestaurantMenuDish < ActiveRecord::Migration
  def change
    create_table(:restaurant) do |r|
      r.column( :name, :string )
      r.column( :phone, :int )
      r.column( :location, :string )
    end
    create_table(:dish) do |r|
      r.column( :name, :string )
      r.column( :ingredients, :string )
    end
  end
end

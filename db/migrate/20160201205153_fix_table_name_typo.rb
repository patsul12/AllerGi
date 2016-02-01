class FixTableNameTypo < ActiveRecord::Migration
  def change
    drop_table :restaurant
    drop_table :dish
    create_table(:restaurants) do |r|
      r.column( :name, :string )
      r.column( :phone, :int )
      r.column( :location, :string )
    end
    create_table(:dishs) do |r|
      r.column( :name, :string )
      r.column( :ingredients, :string )
    end
  end
end

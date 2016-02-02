class FixDishs < ActiveRecord::Migration
  def change
    drop_table :dishs
    create_table(:dishes) do |r|
      r.column( :name, :string )
      r.column( :ingredients, :string )
    end
  end
end

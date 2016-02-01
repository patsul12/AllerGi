class CreateAllergenKeyword < ActiveRecord::Migration
  def change
    create_table(:allergens) do |t|
      t.string :name
      t.timestamps
    end

    create_table(:keyword) do |t|
      t.string :name
      t.timestamps
    end

    create_table(:keywords_allergens) do |t|
      t.integer :keyword_id
      t.integer :allergen_id
    end
  end
end

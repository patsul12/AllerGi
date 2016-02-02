class FxTypo < ActiveRecord::Migration
  def change
    drop_table("keyword")
    create_table "keywords", force: :cascade do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
  end
end

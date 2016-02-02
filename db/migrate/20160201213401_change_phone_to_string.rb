class ChangePhoneToString < ActiveRecord::Migration
  def change
    remove_column( :restaurants, :phone )
    add_column( :restaurants, :phone, :string)
  end
end

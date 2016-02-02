class Keyword < ActiveRecord::Base
  has_and_belongs_to_many :allergens
  validates :name, presence: true
end

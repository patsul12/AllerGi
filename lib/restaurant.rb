
class Restaurant < ActiveRecord::Base
  has_and_belongs_to_many :dishs
end
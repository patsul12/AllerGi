<<<<<<< HEAD
class Dish < ActiveRecord::Base
  belongs_to :restaurant
end
=======

class Dish < ActiveRecord::Base
  has_and_belongs_to_many :restaurants
end
>>>>>>> 4ef8853aec0959193d1f336cbdab9882f331420f

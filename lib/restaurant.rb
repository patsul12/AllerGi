<<<<<<< HEAD
class Restaurant < ActiveRecord::Base
  has_many :dishes
end
=======

class Restaurant < ActiveRecord::Base
  has_and_belongs_to_many :dishs
end
>>>>>>> 4ef8853aec0959193d1f336cbdab9882f331420f

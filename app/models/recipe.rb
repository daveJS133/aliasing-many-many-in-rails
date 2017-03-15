class Recipe < ActiveRecord::Base
  belongs_to :users
  has_many :food_types
  has_many :ingredients, through: :food_types
  

end

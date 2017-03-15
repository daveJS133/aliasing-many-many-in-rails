class FoodType < ActiveRecord::Base
  belongs_to :recipies
  has_many :ingredients
end

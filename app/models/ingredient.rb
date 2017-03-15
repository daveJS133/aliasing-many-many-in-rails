class Ingredient < ActiveRecord::Base
  belongs_to :food_type
  belongs_to :recipies
end

class User < ActiveRecord::Base
  has_many :recepies
  has_many :favourite_ingredients
  has_many :favourite_recipies

  has_many :favourites, through: :favourite_ingredients, source: :ingredients
  has_many :favourites, through: :favourite_recipies, source: :recepies
end

class CreateFavouriteRecipes < ActiveRecord::Migration
  def change
    create_table :favourite_recipes do |t|
      t.integer :recipe_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

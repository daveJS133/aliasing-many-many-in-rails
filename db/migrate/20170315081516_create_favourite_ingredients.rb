class CreateFavouriteIngredients < ActiveRecord::Migration
  def change
    create_table :favourite_ingredients do |t|
      t.integer :ingredient_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

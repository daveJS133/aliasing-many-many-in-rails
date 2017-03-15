class CreateFoodTypes < ActiveRecord::Migration
  def change
    create_table :food_types do |t|
      t.string :name
      t.references :recipies, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

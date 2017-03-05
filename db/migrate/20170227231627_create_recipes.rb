class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :meal_type
      t.string :people
      t.string :cooking_time
      t.string :difficult_level
      t.string :ingredients
      t.string :step_by_step

      t.timestamps
    end
  end
end

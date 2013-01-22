class CreateIngredientsRecipes < ActiveRecord::Migration
  def change
    create_table :ingredients_recipes do |t|
      t.integer :ingredient_id
      t.integer :recipe_id
      t.float :amount
      t.integer :unit_id
    end
  end
end

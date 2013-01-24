class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.float :amount
      t.integer :unit_id
      t.integer :food_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end

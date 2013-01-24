class CreateRecipesTags < ActiveRecord::Migration
  def up
		  create_table(:recipes_tags, :id => false) do |t|
				  t.integer :recipe_id
				  t.integer :tag_id
		  end
  end

  def down
		  drop_table :recipes_tags
  end
end

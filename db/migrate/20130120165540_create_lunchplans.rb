class CreateLunchplans < ActiveRecord::Migration
  def change
    create_table :lunchplans do |t|
      t.date :day
      t.integer :recipe_id
      t.text :notes

      t.timestamps
    end
  end
end

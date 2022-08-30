class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :title
      t.references :diet, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end

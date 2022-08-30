class CreateDiets < ActiveRecord::Migration[7.0]
  def change
    create_table :diets do |t|
      t.string :title
      t.date :date
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end

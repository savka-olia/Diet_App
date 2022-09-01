class AddCaloriesToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :calories, :integer
    add_column :products, :fats, :integer
    add_column :products, :protein, :integer
    add_column :products, :sugar, :integer
  end
end

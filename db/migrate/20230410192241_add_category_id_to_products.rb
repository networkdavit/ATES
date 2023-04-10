class AddCategoryIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :category_id, :integer, null: false, default: 1
    add_foreign_key :products, :categories
  end
end

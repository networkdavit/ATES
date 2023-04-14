class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end

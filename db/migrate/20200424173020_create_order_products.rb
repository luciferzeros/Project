class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.integer :quantity
      t.float :unit_price
      t.belongs_to :product, foreign_keys: true
      t.timestamps
    end
  end
end

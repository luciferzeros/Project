class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :date_created
      t.datetime :date_shipped
      t.belongs_to :customer, foreign_keys: true
      t.integer :status
      t.belongs_to :shipping_info
      t.belongs_to :order_product
      t.timestamps
    end
  end
end

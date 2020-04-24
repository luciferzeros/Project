class CreateShippingInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :shipping_infos do |t|
      t.string :shipping_type
      t.integer :shipping_cost
      t.integer :shipping_region
      t.timestamps
    end
  end
end

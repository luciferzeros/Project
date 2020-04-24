class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :customer_name, nil: false, blank: false, limmit: 15
      t.string :address, blank: true
      t.string :credit_card_info
      t.belongs_to :account
      t.timestamps
    end
  end
end

class CreateAdministrators < ActiveRecord::Migration[6.0]
  def change
    create_table :administrators do |t|
      t.string :admin_name, nil: false , blank: false, limit: 15
      t.belongs_to :account
      t.timestamps
    end
  end
end

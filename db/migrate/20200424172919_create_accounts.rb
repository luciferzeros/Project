class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :email, nil: false, unique: true
      t.string :password_digest, nil: false, blank: false
      t.integer :status
      t.belongs_to :administrator
      t.belongs_to :customer
      t.timestamps
    end
  end
end

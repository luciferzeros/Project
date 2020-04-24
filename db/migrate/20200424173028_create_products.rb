class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      # t.json :categories
      t.string :categories
      t.timestamps
    end
  end
end

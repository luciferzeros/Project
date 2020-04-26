class Product < ApplicationRecord
  serialize :categories, JSON
  belongs_to :order_product
end

class Order < ApplicationRecord
  enum status: [:pending, :failed, :processing, :completed, :canceled, :refunded]
  belongs_to :customer
  has_one :shipping_info, primary_key: true
  has_many :order_products, primary_key: true
  validates :customer_id, presence: true
  validates :shipping_info_id, presence: true
end

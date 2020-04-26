class Customer < ApplicationRecord
  has_many :orders
  has_one :account
  validates :customer_name, presence: true, length: { maximum: 15}
  validates :address, presence: false
end

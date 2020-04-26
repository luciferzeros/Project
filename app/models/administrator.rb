class Administrator < ApplicationRecord
  has_one :account
  validates :admin_name, allow_nil: false, allow_blank: false, length: {maximum: 15}
end

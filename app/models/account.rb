class Account < ApplicationRecord
  has_secure_password
  enum status: [:enable, :banned, :blocked]
  validates :email, presence:true, uniqueness: { message: "Email has already been taken" }
  validates :password, presence: { message: "Password can not blank" }

end

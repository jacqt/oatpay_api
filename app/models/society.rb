class Society < ApplicationRecord
  has_secure_password
  has_many :items

  monetize :balance_cents

  validates :email, presence: true
  validates :name, presence: true

  validates_uniqueness_of :email
  validates_uniqueness_of :nickname
end

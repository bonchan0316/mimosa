class Family < ApplicationRecord

  validates :family_name, presence: true, length: { maximum: 50 }

  has_many :users, through: :family_users
  has_many :family_users
end

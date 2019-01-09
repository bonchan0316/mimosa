class FamilyUser < ApplicationRecord
  belongs_to :user
  belongs_to :family

  validates_uniqueness_of :family_id, scope: :user_id
end

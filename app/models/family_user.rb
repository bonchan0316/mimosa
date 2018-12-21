class FamilyUser < ApplicationRecord
  belongs_to :user
  belongs_to :family, optional: true #nested_attributesの関係
end

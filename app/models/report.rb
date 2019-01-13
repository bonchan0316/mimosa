class Report < ApplicationRecord
  belongs_to :user
  has_many :report_details

  accepts_nested_attributes_for :report_details
end

class Report < ApplicationRecord
  belongs_to :user
  has_many :report_details
end

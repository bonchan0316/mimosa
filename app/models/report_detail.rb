class ReportDetail < ApplicationRecord
  validates :report_body, presence: true, length: { maximum: 4000 }

  belongs_to :report
  belongs_to :report_item
end

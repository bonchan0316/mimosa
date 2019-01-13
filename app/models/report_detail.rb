class ReportDetail < ApplicationRecord
  validates :report_body, presence: true, length: { maximum: 4000 }

  belongs_to :report, optional: true
  belongs_to :report_item

  validates_uniqueness_of :report_item_id, scope: :report_id
end

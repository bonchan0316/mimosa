class ReportDetail < ApplicationRecord
  belongs_to :report
  belongs_to :report_item
end

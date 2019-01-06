class ReportTemplate < ApplicationRecord
  has_many :report_items trough: :report_template_items
  has_many :report_template_items
end

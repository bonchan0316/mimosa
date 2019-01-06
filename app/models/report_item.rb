class ReportItem < ApplicationRecord
  has_many :report_details
  has_many :report_templates, trough: :report_template_items
  has_many :report_template_items
end

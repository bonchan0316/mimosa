class ReportItem < ApplicationRecord
  validates :report_item_name, presence: true, uniqueness: true, length: { maximum: 50 }

  has_many :report_details
  has_many :report_templates, through: :report_template_items
  has_many :report_template_items
end

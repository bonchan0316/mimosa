class ReportTemplate < ApplicationRecord
  validates :report_template_name, presence: true, uniqueness: true, length: { maximum: 50 }

  has_many :report_items, through: :report_template_items
  has_many :report_template_items
end

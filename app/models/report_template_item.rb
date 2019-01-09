class ReportTemplateItem < ApplicationRecord
  belongs_to :report_item
  belongs_to :report_template

  validates_uniqueness_of :report_item_id, scope: :report_template_id  
end

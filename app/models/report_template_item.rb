class ReportTemplateItem < ApplicationRecord
  belongs_to :report_item
  belongs_to :report_template
end

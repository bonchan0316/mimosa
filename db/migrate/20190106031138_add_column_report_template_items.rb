class AddColumnReportTemplateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :report_template_items do |t|
      t.references :report_template, foreign_key: true
      t.references :report_item, foreign_key: true
    end
  end
end

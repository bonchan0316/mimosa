class AddColumnReportTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :report_templates do |t|
      t.string :report_template_name, null: false

      t.timestamps
    end
  end
end

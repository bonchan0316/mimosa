class AddColumnReportDetails < ActiveRecord::Migration[5.2]
  def change

    create_table :report_items do |t|
      t.string :report_item_name, null: false

      t.timestamps
    end

    create_table :report_details do |t|
      t.references :report, foreign_key: true
      t.references :report_item, foreign_key: true
      t.text :report_body, null: false

      t.timestamps
    end

  end
end

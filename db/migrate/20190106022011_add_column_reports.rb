class AddColumnReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.references :user, foreign_key: true
    end
  end
end

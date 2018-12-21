class CreateFamilyUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :family_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :family, index: true, foreign_key: true

      t.timestamps
    end
  end
end

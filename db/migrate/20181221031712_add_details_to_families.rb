class AddDetailsToFamilies < ActiveRecord::Migration[5.2]
  def change
    add_column :families, :family_email, :string, null: false, default: ""
  end
end

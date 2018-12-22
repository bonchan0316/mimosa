class AddColumnFamilyUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :family_users, :family_approved, :boolean, default:false
    add_column :family_users, :family_administrator, :boolean, default:false
  end
end

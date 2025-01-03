class AddRoleToUsers < ActiveRecord::Migration[7.2]
  def up
    add_column :users, :role, :string, null: false, default: 'client_admin'
    execute "ALTER TABLE users ADD CONSTRAINT role_check CHECK (role IN ('admin', 'client_admin'))"
  end

  def down
    remove_column :users, :role
    execute "ALTER TABLE users DROP CONSTRAINT IF EXISTS role_check"
  end
end

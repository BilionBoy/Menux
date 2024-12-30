class RenameUseresToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_table :useres, :users
  end
end

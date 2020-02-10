class AddRoleToUserModel < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :role, :integer
  end

  def down
    remove_column :users, :role, :integer
  end
end

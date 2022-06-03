class AddImageToAdmin < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_name, :string
    add_column :admins, :user_name, :string
    add_column :users, :role, :string
    add_column :admins, :role, :string
    add_column :users, :login_id, :string
    add_column :admins, :login_id, :string
  end
end

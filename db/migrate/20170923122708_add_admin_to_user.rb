class AddAdminToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :nickname, :string
  end
end

class AddNameAndIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :sch_id, :string
  end
end

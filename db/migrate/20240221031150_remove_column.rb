class RemoveColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :packages, :user_id
  end
end

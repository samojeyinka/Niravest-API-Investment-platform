class CreateUserPackages < ActiveRecord::Migration[7.1]
  def change
    create_table :user_packages do |t|
      t.integer :package_id
      t.integer :user_id
      t.timestamps
    end
  end
end

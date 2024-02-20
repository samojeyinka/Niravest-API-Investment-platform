class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.decimal :balance, precision: 10, scale: 2, default: 0.00
      t.timestamps
    end
  end
end

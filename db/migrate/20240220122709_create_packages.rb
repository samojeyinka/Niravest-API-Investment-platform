class CreatePackages < ActiveRecord::Migration[7.1]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :duration
      t.integer :daily_profits
      t.integer :total_profits
      t.integer :price
      t.boolean :active,default: false

      t.timestamps
    end
  end
end

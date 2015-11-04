class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_street
      t.string :customer_city

      t.timestamps null: false
    end
  end
end

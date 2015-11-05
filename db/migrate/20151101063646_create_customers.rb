class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name null: false
      t.string :customer_street null: false
      t.string :customer_city null: false

      t.timestamps null: false
    end
  end
end

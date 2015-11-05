class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :branch_name null: false
      t.string :branch_city null: false
      t.integer :assets null: false

      t.timestamps null: false
    end
  end
end

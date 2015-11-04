class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :branch_name
      t.string :branch_city
      t.integer :assets

      t.timestamps null: false
    end
  end
end

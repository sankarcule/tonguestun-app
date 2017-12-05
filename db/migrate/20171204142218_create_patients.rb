class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :phone_no

      t.timestamps
    end
  end
end

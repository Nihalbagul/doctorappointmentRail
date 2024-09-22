class CreatePatients < ActiveRecord::Migration[7.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :phone
      t.datetime :registered_at

      t.timestamps
    end
  end
end

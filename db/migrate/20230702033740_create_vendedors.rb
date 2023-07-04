class CreateVendedors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendedors do |t|
      t.string :name
      t.string :mail
      t.integer :amount

      t.timestamps
    end
  end
end

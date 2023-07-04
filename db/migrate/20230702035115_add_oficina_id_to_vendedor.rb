class AddOficinaIdToVendedor < ActiveRecord::Migration[7.0]
  def change
    add_reference :vendedors, :office, null: false, foreign_key: true
  end
end

class AddManagerIdToVendedor < ActiveRecord::Migration[7.0]
  def change
    add_reference :vendedors, :manager, null: false, foreign_key: true
  end
end

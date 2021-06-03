class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :blend_name, null: false
      t.string :origin, null: false
      t.integer :price, default: 0

      t.timestamps
    end
  end
end

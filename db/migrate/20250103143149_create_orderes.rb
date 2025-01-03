class CreateOrderes < ActiveRecord::Migration[7.2]
  def change
    create_table :orderes do |t|
      t.references :establishment, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.decimal :total_price
      t.string :status
      t.string :delivery_method
      t.string :delivery_address

      t.timestamps
    end
  end
end

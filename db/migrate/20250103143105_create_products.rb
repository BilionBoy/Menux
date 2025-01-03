class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image_url
      t.boolean :promotion_active
      t.decimal :promotion_price

      t.timestamps
    end
  end
end

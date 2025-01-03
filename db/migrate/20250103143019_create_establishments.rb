class CreateEstablishments < ActiveRecord::Migration[7.2]
  def change
    create_table :establishments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :slug
      t.string :type
      t.json :theme
      t.json :social_links

      t.timestamps
    end
  end
end

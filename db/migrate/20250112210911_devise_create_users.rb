class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def up
    create_table :users do |t|
      ## Devise Fields
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Custom Fields
      t.string :cpf, null: false, unique: true
      t.string :telefone
      t.string :nome
      t.references :funcao, foreign_key: true

      ## Trackable Fields
      t.integer :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string :current_sign_in_ip
      t.string :last_sign_in_ip

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
    add_index :users, :cpf, unique: true
  end

  def down
    drop_table :users
  end
end

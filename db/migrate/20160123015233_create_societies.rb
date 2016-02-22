class CreateSocieties < ActiveRecord::Migration[5.0]
  def change
    create_table :societies do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :nickname
      t.string :auth_token
      t.string :sort_code
      t.string :account_number
      t.integer :balance_cents, default: 0

      t.timestamps
    end

    add_index :societies, :email, unique: true
    add_index :societies, :nickname, unique: true
    add_index :societies, :balance_cents
    add_index :societies, :sort_code
    add_index :societies, :account_number
  end
end

class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :name
      t.string :email
      t.references :item, index: true, foreign_key: true

      t.timestamps
    end

    add_index :payments, :email
  end
end

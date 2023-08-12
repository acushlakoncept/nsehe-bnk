class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :account_number, unique: true, index: true
      t.integer :account_type, default: 0
      t.string :description, null: false, default: ''
      t.integer :currency, default: 0
      t.integer :balance, default: 0
      t.integer :status, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :account_number, unique: true, index: true
      t.references :account_type, null: false, foreign_key: true
      t.string :description, null: false, default: ""
      t.references :currency, null: false, foreign_key: true
      t.integer :balance,  null: false, default: 0
      t.references :status, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

  end
end

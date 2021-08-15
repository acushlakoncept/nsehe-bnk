class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.integer :account_number, unique: true, index: true
      t.string :acccount_type
      t.string :description, null: false, default: ""
      t.string :currency,  null: false, default: "USD"
      t.integer :balance,  null: false, default: 0
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

  end
end

class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :description, null: false, default: ''
      t.string :debits, null: false, default: ''
      t.string :credits, null: false, default: ''
      t.references :user, null: false, foreign_key: true
      t.datetime :transaction_date

      t.timestamps
    end
  end
end

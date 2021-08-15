class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :description, null: false, default: ""
      t.string :debits, null: false, default: ""
      t.string :credits, null: false, default: ""

      t.timestamps
    end
  end
end

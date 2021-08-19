ActiveAdmin.register Transaction do
  permit_params :description, :debits, :credits, :user_id, :transaction_date

  actions :all

  index do
    selectable_column
    column :user
    column :description
    column :debits
    column :credits
    column :transaction_date
    actions
  end
end

ActiveAdmin.register Account do
  menu priority: 2
  permit_params :account_type_id, :description, :currency_id, :balance, :status_id, :user_id, :account_number
end

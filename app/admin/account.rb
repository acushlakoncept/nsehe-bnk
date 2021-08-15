ActiveAdmin.register Account do
    permit_params :account_type, :description, :currency, :balance, :status
end
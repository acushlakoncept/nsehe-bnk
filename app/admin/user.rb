ActiveAdmin.register User do
    permit_params :first_name, :last_name, :username, :email, :status, :phone_number
end
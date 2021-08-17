ActiveAdmin.register User do
  menu priority: 1
  permit_params :first_name, :last_name, :username, :email, :status, :phone_number,
                :country, :state, :city, :address, :security_question, :security_answer

  actions :all

  index do
    selectable_column
    column :first_name
    column :last_name
    column :username
    column :email
    column :country
    column :status
    column :created_at
    actions
  end
end

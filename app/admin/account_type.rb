ActiveAdmin.register AccountType do
    menu parent: "Account Options"
    permit_params :name
end
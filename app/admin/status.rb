ActiveAdmin.register Status do
    menu parent: "Account Options"
    permit_params :name
end
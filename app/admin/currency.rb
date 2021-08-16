ActiveAdmin.register Currency do
  menu parent: 'Account Options'
  permit_params :name, :symbol
end

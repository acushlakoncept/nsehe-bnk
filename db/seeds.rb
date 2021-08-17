# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  AdminUser.find_or_create_by(email: 'admin@example.com', password: 'password',
                              password_confirmation: 'password')
end
Currency.create!([{ name: 'USD', symbol: '$' }, { name: 'EUR', symbol: '€' }, { name: 'GBP', symbol: '£' }])
AccountType.create!([{ name: 'Savings' }, { name: 'Current' }])
Status.create!([{ name: 'Active' }, { name: 'Suspended' }, { name: 'Pending' }])
AdminUser.find_or_create_by(email: 'nsehe@aribinc.com', password: 'nsehe2021', password_confirmation: 'nsehe2021')

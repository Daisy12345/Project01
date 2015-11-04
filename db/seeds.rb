# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.destroy_all
Customer.destroy_all
Branch.destroy_all

cathrine = Customer.where(customer_name: "Cathrine", customer_street: "Palmer", customer_city: "Sydney").first_or_create
strathfield = Branch.where(branch_name: "Strathfield", branch_city: "Sydney", assets: "56000").first_or_create

a101 = Account.where(account_number: "A101", balance: "2000", branch: strathfield, customer: cathrine).first_or_create

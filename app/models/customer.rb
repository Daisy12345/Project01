class Customer < ActiveRecord::Base
	has_many :accounts
	validates :customer_name, presence: true
	validates :customer_street, presence: true
	validates :customer_city, presence: true
end

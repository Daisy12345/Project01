class Branch < ActiveRecord::Base
	has_many :accounts
	has_many :customers, through: :accounts
	validates :branch_name, presence: true
	validates :branch_city, presence: true
	validates :assets, presence: true
end

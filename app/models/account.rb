class Account < ActiveRecord::Base
  belongs_to :branch
  belongs_to :customer
end
class User < ActiveRecord::Base
	has_many :addrs
  attr_accessible :first_name, :last_name
end

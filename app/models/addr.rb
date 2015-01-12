class Addr < ActiveRecord::Base
	belongs_to :user
  attr_accessible :city, :state, :street, :zip
end

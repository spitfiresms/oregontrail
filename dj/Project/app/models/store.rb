class Store < ActiveRecord::Base
	
	belongs_to :trading_party
	has_many :items
	accepts_nested_attributes_for :items, :allow_destroy => false
	
end

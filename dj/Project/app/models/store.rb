class Store < ActiveRecord::Base
	
	belongs_to :traveling_party
	after_initialize :init
	
	def init
		self.foodamt = 0
	end
end

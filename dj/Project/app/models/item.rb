class Item < ActiveRecord::Base

	belongs_to :store
	belongs_to :trading_party
	belongs_to :traveling_party
	
	def type_setter=(type_name)
    self[:type]=type_name
  end

end

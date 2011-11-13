class Axle < Item

	belongs_to :trading_party
	belongs_to :traveling_party


	def initialize
		super(:name=>"Axle", :weight=>10, :value=>20, :quantity=>0)
	end
end

class Wheel < Item
	def initialize
		super(:name=>"Wheel", :weight=>10, :value=>15, :quantity=>0)
	end
end

class Tongue < Item
	def initialize
		super(:name=>"Tongue", :weight=>5, :value=>10, :quantity=>0)
	end
end

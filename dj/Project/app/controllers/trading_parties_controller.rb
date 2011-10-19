class TradingPartiesController < ApplicationController

	def new
		@trading_party = TradingParty.new
		@arr = [Food.new, Ox.new, Clothing.new, Ammunition.new, Axle.new, Wheel.new, Tongue.new]
		@traveling_party = TravelingParty.order("updated_at").last()
		
		#@itemArr = { "food"=>Food.new, "clothing"=>Clothing.new, "ox"=>Ox.new, "axle"=>Axle.new, "wheel"=>Wheel.new, "tongue"=>Tongue.new, "ammo"=>Ammunition.new}
		
	end

	def create
		@traveling_party = TravelingParty.order("updated_at").last()
		@trading_party = TradingParty.new(params[:trading_party])
		#@arr = [Item.new(params[:item])]
		
		@item = Item.where(:traveling_party_id=>@traveling_party.id).first
		@traveling_party.capacity +=  @item.quantity
		@traveling_party.save
		redirect_to '/storesub/'
	end

	def modify
	
		
	
	end
	
	def continue
         redirect_to '/gameplay/'
	end
end

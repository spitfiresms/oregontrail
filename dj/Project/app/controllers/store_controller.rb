class StoreController < ApplicationController

	def new
		@store = Store.new
		@trading_party = TradingParty
		@item = Item.where(:traveling_party_id=>@traveling_party.id).first
		@arr = [Food.new, Ox.new, Clothing.new, Ammunition.new, Axle.new, Wheel.new, Tongue.new]
		@store = Store.order("updated_at").last()
	end


end

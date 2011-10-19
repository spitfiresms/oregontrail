class StoreController < ApplicationController

	def new
		
		@trading_party = TradingParty
		@arr = @trading_party.arr
		@store = Store.order("updated_at").last()
	end


end

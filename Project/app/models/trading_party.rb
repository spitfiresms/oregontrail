class TradingParty < ActiveRecord::Base

    has_many :items
    validates_presence_of :items, :money

end

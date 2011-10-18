class TradingParty < ActiveRecord::Base

    has_many :items
    validates_presence_of :items
    accepts_nested_attributes_for :travelers

end

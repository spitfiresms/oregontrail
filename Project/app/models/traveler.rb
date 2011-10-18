class Traveler < ActiveRecord::Base

    belongs_to :traveling_party
    has_many :items
    validates_presence_of :name, :health

end

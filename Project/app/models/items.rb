class Items < ActiveRecord::Base

    belongs_to_many
    accepts_nested_attributes_for :travelers

end

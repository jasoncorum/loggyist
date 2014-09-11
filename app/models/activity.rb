class Activity < ActiveRecord::Base

		belongs_to :lobbyist, inverse_of: :activities

end

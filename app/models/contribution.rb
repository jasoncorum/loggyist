class Contribution < ActiveRecord::Base

	belongs_to :lobbyist, inverse_of: :contributions

end

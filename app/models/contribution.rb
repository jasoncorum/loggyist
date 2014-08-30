class Contribution < ActiveRecord::Base

	validates :recipient, :date, presence: true
	validates :amount, numericality: { only_integer: true }

	belongs_to :lobbyist, inverse_of: :contributions

end

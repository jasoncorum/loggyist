class ContributionReport < ActiveRecord::Base

	has_many :contributions
	belongs_to :lobbyist, inverse_of: :contribution_reports, dependent: :destroy

end


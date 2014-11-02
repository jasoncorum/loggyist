class ContributionReport < ActiveRecord::Base

	has_and_belongs_to_many :contributions
	belongs_to :lobbyist, inverse_of: :contribution_reports, dependent: :destroy

end


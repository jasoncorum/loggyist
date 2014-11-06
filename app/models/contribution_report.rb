class ContributionReport < ActiveRecord::Base

	has_and_belongs_to_many :contributions
	belongs_to :lobbyist, inverse_of: :contribution_reports, dependent: :destroy

	def self.contribution_search(param, param2)
		Contribution.find(:all, :conditions => ['date >= :query and date <= :query2',
    query: param, query2: param2]
  end

end


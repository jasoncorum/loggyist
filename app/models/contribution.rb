class Contribution < ActiveRecord::Base

	belongs_to :lobbyist, inverse_of: :contributions, dependent: :destroy
	has_and_belongs_to_many :contribution_report
	
	validates :recipient, :date, presence: true
	validates :amount, numericality: { only_integer: true }

	NULL_ATTRS = %w( notes )
  before_save :nil_if_blank

  private

  def nil_if_blank
  	NULL_ATTRS.each { |attr| self[attr] = nil if self[attr].blank? }
  end

  def self.contribution_search(param, param2)
		where('date >= :query AND date <= :query2', query: param, query2: param2)
	end

end

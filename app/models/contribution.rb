class Contribution < ActiveRecord::Base

	belongs_to :lobbyist, inverse_of: :contributions
	
	validates :recipient, :date, presence: true
	validates :amount, numericality: { only_integer: true }

	NULL_ATTRS = %w( notes )
  before_save :nil_if_blank

  private

  def nil_if_blank
  	NULL_ATTRS.each { |attr| self[attr] = nil if self[attr].blank? }
  end

end

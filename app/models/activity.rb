class Activity < ActiveRecord::Base

	belongs_to :lobbyist
	has_many :attendees, inverse_of: :activity, dependent: :destroy
	
	accepts_nested_attributes_for :attendees, allow_destroy: true

	validates :activity_type, :date, :start, :end, presence: true
	validate :check_activity_type, on: :create
	
  def check_activity_type
    errors.add(:activity_type, "Please select a type of activity.") if activity_type.include?("Select Activity")
  end

  def self.activity_search(param) #date_from) #, date_to)
		where('date >= :query', query: param)

		# where('date >= :query1 AND date <= :query2', query1: "%#{date_from}%", query2: "%#{date_to}")
	end

end

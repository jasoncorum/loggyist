class Activity < ActiveRecord::Base

	belongs_to :lobbyist
	has_many :attendees, inverse_of: :activity, dependent: :destroy
	
	accepts_nested_attributes_for :attendees, allow_destroy: true

	validates :activity_type, :date, :start, :end, presence: true
	validate :check_activity_type, on: :create
	
  def check_activity_type
    errors.add(:activity_type, "Please select a type of activity.") if activity_type.include?("Select Activity")
  end

  def self.activity_search(param, param2)
		where('date >= :query AND date <= :query2', query: param, query2: param2)
	end

end

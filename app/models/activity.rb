class Activity < ActiveRecord::Base

	belongs_to :lobbyist
	has_many :attendees, inverse_of: :activity, dependent: :destroy
	
	accepts_nested_attributes_for :attendees

	validates :activity_type, :date, :start, :end, presence: true
	validate :check_activity_type, on: :create
	
  def check_activity_type
    errors.add(:activity_type, "Please select a type of activity.") if activity_type.include?("Select Activity")
  end

end

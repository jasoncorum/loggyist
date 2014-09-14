class AddActivityIdToAttendee < ActiveRecord::Migration
  def change
  	add_column :attendees, :activity_id, :integer
  end
end

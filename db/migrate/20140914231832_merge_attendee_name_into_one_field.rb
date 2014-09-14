class MergeAttendeeNameIntoOneField < ActiveRecord::Migration
  def change
  	remove_column :attendees, :first_name
  	remove_column :attendees, :last_name
  	add_column :attendees, :name, :string
  end
end

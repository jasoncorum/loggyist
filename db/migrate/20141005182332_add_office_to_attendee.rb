class AddOfficeToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :office, :string
  end
end

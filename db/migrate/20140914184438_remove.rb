class Remove < ActiveRecord::Migration
  def change
  	remove_column :activities, :attendee_first_name
  	remove_column :activities, :attendee_last_name
  	remove_column :activities, :office
  end
end

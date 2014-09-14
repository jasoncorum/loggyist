class AddLobbyistIdToAttendee < ActiveRecord::Migration
  def change
 		add_column :attendees, :lobbyist_id, :integer
  end
end

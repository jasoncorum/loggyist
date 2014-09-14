class DeleteUnusedTableFields < ActiveRecord::Migration
  def change
  	remove_column :attendees, :lobbyist_id
  	remove_column :attendees, :office_string
  end
end

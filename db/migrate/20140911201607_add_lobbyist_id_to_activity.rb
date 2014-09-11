class AddLobbyistIdToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :lobbyist_id, :string
  end
end

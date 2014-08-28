class AddLobbyistIdToContributions < ActiveRecord::Migration
  def change
    add_column :contributions, :lobbyist_id, :integer
    add_index :contributions, :lobbyist_id
  end
end

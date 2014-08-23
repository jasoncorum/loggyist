class AddAdminIdToLobbyists < ActiveRecord::Migration
  def change
    add_column :lobbyists, :admin_id, :integer
  end
end

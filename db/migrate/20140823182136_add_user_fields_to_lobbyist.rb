class AddUserFieldsToLobbyist < ActiveRecord::Migration
  def change
    add_column :lobbyists, :first_name, :string
    add_column :lobbyists, :middle_name, :string
    add_column :lobbyists, :last_name, :string
  end
end

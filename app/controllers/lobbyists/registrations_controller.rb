class Lobbyists::RegistrationsController < Devise::RegistrationsController
	
	before_filter :authenticate_admin!

end
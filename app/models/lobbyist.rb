class Lobbyist < ActiveRecord::Base
  
  belongs_to :admin, inverse_of: :lobbyist

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

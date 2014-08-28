class Lobbyist < ActiveRecord::Base
  
  has_many :contributions, inverse_of: :lobbyist

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

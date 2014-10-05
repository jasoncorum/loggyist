class ContributionsController < ApplicationController 

before_action :authenticate_lobbyist!
before_action :correct_lobbyist, only: [:edit, :update, :destroy, :show]
before_action :set_contribution_create, only: [:create]

  def index
    @lobbyist_contributions = current_lobbyist.contributions.all.reverse

  end	

  def new
  	@contribution = current_lobbyist.contributions.build
	end

  def create
    if @contribution.save
			redirect_to @contribution
		else
			render 'new'
		end
  end

  def edit
  end

  def update
    if @contribution.update(contribution_params)
      redirect_to @contribution, notice: 'Contribution was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def show
  	@contribution = Contribution.find params[:id]
  end

  def destroy
    @contribution.destroy
    redirect_to contributions_url
  end


  private

	def contribution_params
  	params.require(:contribution).permit(:amount, :date, :recipient, :notes)
	end

 	def correct_lobbyist
 		@contribution = current_lobbyist.contributions.find_by(id: params[:id])
 		redirect_to root_path, notice: "Not authorized to access this section of Loggyist." if @contribution.nil?
 	end

  def set_contribution_create
    @contribution = current_lobbyist.contributions.build(contribution_params)
  end

end
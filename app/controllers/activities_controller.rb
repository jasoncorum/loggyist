class ActivitiesController < ApplicationController 

before_action :authenticate_lobbyist!
before_action :correct_lobbyist, only: [:edit, :update, :destroy, :show]
before_action :set_activities_create, only: [:create]

  def index
    @lobbyist_activities = current_lobbyist.activities.all

  end	

  def new
  	@activity = current_lobbyist.activities.build
	end

  def create
    if @activity.save
			redirect_to @activity
		else
			render 'new'
		end
  end

  def edit
  end

  def update
    if @activity.update(contribution_params)
      redirect_to @activity, notice: 'Political Activity was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def show
  	@activity = Activity.find params[:id]
  end

  def destroy
    @activity.destroy
    redirect_to activities_url
  end


  private

	def activity_params
  	params.require(:activity).permit(:type, :date, :start, :end, :attendee_first_name, :attendee_last_name, :office, :from_phone, :to_phone, :subject)
	end

 	def correct_lobbyist
 		@activity = current_lobbyist.activities.find_by(id: params[:id])
 		redirect_to root_path, notice: "Not authorized to access this section of Loggyist." if @activity.nil?
 	end

  def set_activites_create
    @activity = current_lobbyist.activity.build(activity_params)
  end

end
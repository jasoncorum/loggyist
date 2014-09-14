class ActivitiesController < ApplicationController 

before_action :authenticate_lobbyist!
before_action :correct_lobbyist, only: [:edit, :update, :destroy, :show]
before_action :set_activities_create, only: [:create]
before_action :set_options_for_activity_type, only: [:new, :edit]

  def index
    @lobbyist_activities = current_lobbyist.activities.all
  end	

  def new
  	@activity = current_lobbyist.activities.build
    3.times { @activity.attendees.build }
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
    if @activity.update(activity_params)
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
  	params.require(:activity).permit(:activity_type, :date, :start, :end, :from_phone, :to_phone, :subject, attendees_attributes: [:name])
	end

 	def correct_lobbyist
 		@activity = current_lobbyist.activities.find_by(id: params[:id])
 		redirect_to root_path, notice: "Not authorized to access this section of Loggyist." if @activity.nil?
 	end

  def set_activities_create
    @activity = current_lobbyist.activities.build(activity_params)
  end

  def set_options_for_activity_type
    @options_for_activity_type = ["-- Select Activity --", "Phone Call", "Email", "Meeting"]
  end

end
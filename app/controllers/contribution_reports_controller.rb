class ContributionReportsController < ApplicationController

	def new
		@contribution_report = current_lobbyist.contribution_reports.contribution_search(params[:from], params[:to]).build
		@lobbyist_contributions = current_lobbyist.contributions.all.reverse
		
		# report_start_date = build_date_from_params("start_date", params[:report])
		# report_end_date = build_date_from_params("end_date", params[:report])
	end

	def create
    if @contribution_report.save
			redirect_to @contribution_report
		else
			render 'new'
		end
  end

  def show
  	@contribution_report = ContributionReport.find params[:id]
  end

	private

	# def build_date_from_params(field_name, params)
 #  	Date.new(params["report_#{field_name}_1i"].to_i, 
 #       params["report_#{field_name}_2i"].to_i, 
 #       params["report_#{field_name}_3i"].to_i)
	# end

end

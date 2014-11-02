class CreateContributionsContributionReportsJoinTable < ActiveRecord::Migration
  def change
    create_join_table :contributions, :contribution_reports do |t|
      # t.index [:contribution_id, :contribution_report_id]
      # t.index [:contribution_report_id, :contribution_id]
    end
  end
end

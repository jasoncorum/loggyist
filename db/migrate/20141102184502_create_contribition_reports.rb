class CreateContribitionReports < ActiveRecord::Migration
  def change
    create_table :contribition_reports do |t|
      t.date :from_date
      t.date :to_date
      t.string :lobbyist_id
    end
  end
end

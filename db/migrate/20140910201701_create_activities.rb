class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :type
      t.date :date
      t.time :start
      t.time :end
      t.string :attendee_first_name
      t.string :attendee_last_name
      t.string :office
      t.string :from_phone
      t.string :to_phone
      t.text :subject

      t.timestamps
    end
  end
end

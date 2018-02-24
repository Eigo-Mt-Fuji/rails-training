class CreateDailyReports < ActiveRecord::Migration[5.1]
  def change
    create_table :daily_reports do |t|
      t.date :date
      t.string :from_time
      t.string :end_time
      t.string :comment

      t.timestamps
    end
  end
end

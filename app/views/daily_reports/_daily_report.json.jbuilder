json.extract! daily_report, :id, :date, :from_time, :end_time, :comment, :created_at, :updated_at
json.url daily_report_url(daily_report, format: :json)

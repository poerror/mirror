json.extract! task, :id, :name, :description, :interval, :duration, :last_activity_at, :priority, :status, :longterm, :task_id, :created_at, :updated_at
json.url task_url(task, format: :json)

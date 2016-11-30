json.extract! job, :id, :title, :platform, :user_id, :created_at, :updated_at
json.url job_url(job, format: :json)
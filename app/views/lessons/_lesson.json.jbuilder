json.extract! lesson, :id, :title, :author_id, :lesson_id, :status, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
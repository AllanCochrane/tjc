json.extract! lesson_step, :id, :lesson_id, :text, :media_type, :file_path, :description, :created_at, :updated_at
json.url lesson_step_url(lesson_step, format: :json)
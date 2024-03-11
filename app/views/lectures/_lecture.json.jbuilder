json.extract! lecture, :id, :course_id, :text, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)

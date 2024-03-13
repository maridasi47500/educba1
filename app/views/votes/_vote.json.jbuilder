json.extract! vote, :id, :course_id, :user_id, :note, :created_at, :updated_at
json.url vote_url(vote, format: :json)

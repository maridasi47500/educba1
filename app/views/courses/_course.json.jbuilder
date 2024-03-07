json.extract! course, :id, :titre, :nbminutes, :curriculum, :created_at, :updated_at
json.url course_url(course, format: :json)

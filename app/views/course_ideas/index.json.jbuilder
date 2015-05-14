json.array!(@course_ideas) do |course_idea|
  json.extract! course_idea, :id, :email, :content
  json.url course_idea_url(course_idea, format: :json)
end

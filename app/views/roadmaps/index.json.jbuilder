json.array!(@roadmaps) do |roadmap|
  json.extract! roadmap, :id, :course_id, :name
  json.url roadmap_url(roadmap, format: :json)
end

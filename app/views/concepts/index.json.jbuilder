json.array!(@concepts) do |concept|
  json.extract! concept, :id, :roadmap_id, :position, :title, :content
  json.url concept_url(concept, format: :json)
end

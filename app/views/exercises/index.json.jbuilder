json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :resource_id, :url, :position
  json.url exercise_url(exercise, format: :json)
end

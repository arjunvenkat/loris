json.array!(@applications) do |application|
  json.extract! application, :id, :course, :section, :student_first_name, :student_last_name, :student_email, :parent_name, :parent_email, :phone, :reference, :experience
  json.url application_url(application, format: :json)
end

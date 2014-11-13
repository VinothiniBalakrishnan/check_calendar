json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :full_name, :overall_rating, :rating, :is_recommanded
  json.url doctor_url(doctor, format: :json)
end

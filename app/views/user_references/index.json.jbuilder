json.array!(@user_references) do |user_reference|
  json.extract! user_reference, :id, :document, :attachment
  json.url user_reference_url(user_reference, format: :json)
end

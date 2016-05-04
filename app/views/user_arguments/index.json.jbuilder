json.array!(@user_arguments) do |user_argument|
  json.extract! user_argument, :id, :document_id, :overall_reason, :user_change_details
  json.url user_argument_url(user_argument, format: :json)
end

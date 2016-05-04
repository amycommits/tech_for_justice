json.array!(@user_documents) do |user_document|
  json.extract! user_document, :id, :user_id, :document_id
  json.url user_document_url(user_document, format: :json)
end

json.array!(@document_user_case_infos) do |document_user_case_info|
  json.extract! document_user_case_info, :id, :user_document_id, :user_case_info_id
  json.url document_user_case_info_url(document_user_case_info, format: :json)
end

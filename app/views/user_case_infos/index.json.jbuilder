json.array!(@user_case_infos) do |user_case_info|
  json.extract! user_case_info, :id, :user_id, :docket_id, :charged_with, :charge_type, :police_description, :case_conclusion, :is_case_pending, :case_end_date
  json.url user_case_info_url(user_case_info, format: :json)
end

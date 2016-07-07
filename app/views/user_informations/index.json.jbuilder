json.array!(@user_informations) do |user_information|
  json.extract! user_information, :id, :user_id, :pd_id, :first_name, :last_name, :middle_name, :prefix, :suffix, :title, :address_line_1, :address_line_2, :city, :state, :phone_number
  json.url user_information_url(user_information, format: :json)
end

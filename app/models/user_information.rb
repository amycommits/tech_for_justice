# == Schema Information
#
# Table name: user_informations
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  pd_id          :text
#  first_name     :text
#  last_name      :text
#  middle_name    :text
#  preefix_suffix :text
#  title          :text
#  address_line_1 :text
#  address_line2  :text
#  city           :text
#  state          :text
#  phone_number   :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class UserInformation < ActiveRecord::Base
  belongs_to :user
  has_many :user_documents, through: :document_user_informations
  has_many :user_case_infos, through: :map_user_document_user_infos
end

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
#  prefix         :text
#  suffix         :text
#  title          :text
#  address_line_1 :text
#  address_line_2 :text
#  city           :text
#  state          :text
#  phone_number   :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class UserInformation < ActiveRecord::Base
  belongs_to :user
end


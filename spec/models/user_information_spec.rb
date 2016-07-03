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

 require "rails_helper"

RSpec.describe UserInformation, type: :model do
 	it { should belong_to(:user) }
end

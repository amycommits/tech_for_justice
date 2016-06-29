# == Schema Information
#
# Table name: document_user_informations
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  document_id         :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  user_document_id    :integer
#  user_information_id :integer
#

 require "rails_helper"

 RSpec.describe DocumentUserInformation, type: :model do
 end

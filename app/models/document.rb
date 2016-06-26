# == Schema Information
#
# Table name: documents
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  form       :text
#

class Document < ActiveRecord::Base
end

class DocumentUserCaseInfo < ActiveRecord::Base
  belongs_to :user_document
  belongs_to :user_case_info
end

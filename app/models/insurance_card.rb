class InsuranceCard < ActiveRecord::Base
  has_many :temporary_uploads 
end

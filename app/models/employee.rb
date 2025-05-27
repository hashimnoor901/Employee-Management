class Employee < ApplicationRecord
  validates :first_name , :last_name , presence:true
  validates :personal_email , presence:true , uniqueness:true
  validates :city , :country, :state , :pincode , :adress_line_1 , presence:true
end

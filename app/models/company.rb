class Company < ActiveRecord::Base
  validates_presence_of :companyname,:companyaddress,:contactperson,:contactnumber
#  validates_uniqueness_of :companyemail
  validates_format_of :companyemail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_confirmation_of  :password
  # has_secure_password
  scope :allwhere,->(companyemail,password){where("companyemail=? AND password=? ",companyemail,password)}

end

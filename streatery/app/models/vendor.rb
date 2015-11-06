class Vendor < ActiveRecord::Base
  has_secure_password
  has_one :vendor_message
end

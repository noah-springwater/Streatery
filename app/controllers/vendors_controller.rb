class VendorsController < ApplicationController

  include SessionsHelper
 #  vendors POST /vendors(.:format)     vendors#create

 def create
   Vendor.create(vendor_params)
   redirect_to log_in_path
 end

 # new_vendor GET  /vendors/new(.:format) vendors#new
 def new
   @vendor = Vendor.new
 end

 def profile
   authenticate
   @vendor = current_vendor

 end

 def log_in

 end

private

def vendor_params
  params.require(:vendor).permit(:username, :password)
end

end

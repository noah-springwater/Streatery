class SessionsController < ApplicationController

  def create
    username = params[:username]
    password = params[:password]
    vendor = Vendor.find_by({username: username})

    if vendor && vendor.authenticate(password)
      session[:vendor_id] = vendor.id
      redirect_to profile_path
    else
      redirect_to log_in_path
    end

  end

  def destroy
    session[:vendor_id] = nil
    redirect_to log_in_path
  end

end

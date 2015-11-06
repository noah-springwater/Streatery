module SessionsHelper
  def authenticate

    if session[:vendor_id]
      @vendor = Vendor.find(session[:vendor_id])
    else
      redirect_to log_in_path unless current_vendor
    end

  end

  def current_vendor

    if session[:vendor_id]
      @current_vendor = Vendor.find(session[:vendor_id])
    else
      redirect_to log_in_path
    end


  end


end

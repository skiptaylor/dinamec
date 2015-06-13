helpers do

  def auth_customer
    unless session[:customer] == true || session[:admin] == true
      flash[:alert] = 'You must sign in to see that page.'
      redirect '/signin'
    end
  end

  def auth_admin
    unless session[:admin] == true
      flash[:alert] = 'You must be an admin to see that page.'
      redirect '/signin'
    end
  end

end
class OmniauthCallbacksController < Devise::OmniauthCallbacksController
def create
  begin
    user = User.from_omniauth(request.env['omniauth.auth'])
    #session[:user_id] = @user.id
    render "Welcome, #{@user.name}!"
  rescue
    render "There was an error while trying to authenticate you..."
  end
  #redirect_to root_path
end
end
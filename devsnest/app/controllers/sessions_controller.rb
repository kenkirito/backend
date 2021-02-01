# frozen_string_literal: true

class SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: resource
  end

  def respond_to_on_destroy
    head :no_content
  end

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
